#include <iostream>
#include <vector>
#include <string>

using namespace std;

// 检查单词是否与模板匹配的函数
bool isMatch(const string& word, const string& pattern) {
    int wordIndex = 0, patternIndex = 0;
    int wildcardIndex = -1, wildcardMatchIndex = -1;

    while (wordIndex < word.length()) {
        // 如果当前字符匹配，或者模板字符是 '?'
        if (patternIndex < pattern.length() && (pattern[patternIndex] == '?' || pattern[patternIndex] == word[wordIndex])) {
            ++wordIndex;
            ++patternIndex;
        }
        // 如果模板字符是 '*'
        else if (patternIndex < pattern.length() && pattern[patternIndex] == '*') {
            wildcardIndex = patternIndex; // 记录 '*' 的位置
            wildcardMatchIndex = wordIndex; // 记录当前匹配到的位置
            ++patternIndex; // 跳过 '*'
        }
        // 如果当前字符不匹配且有 '*' 可以匹配
        else if (wildcardIndex != -1) {
            patternIndex = wildcardIndex + 1; // 回退到 '*' 的下一个位置
            wordIndex = ++wildcardMatchIndex; // 回退到上一个匹配的位置的下一个位置
        }
        // 如果当前字符不匹配且没有 '*' 可以匹配，且没有 '*' 的情况下，直接返回 false
        else return false;

        cout << patternIndex << " " << wordIndex << " " << wildcardIndex << " " << wildcardMatchIndex << endl;
    }

    // 如果模板字符还有剩余，但是单词已经匹配完了
    while (patternIndex < pattern.length() && pattern[patternIndex] == '*')
        ++patternIndex;

    // 如果单词字符还有剩余，但是模板已经匹配完了
    return wordIndex == word.length() && patternIndex == pattern.length();
}

int main() {
    freopen("data.in", "r", stdin);
    int N, M;
    cin >> N >> M;

    vector<string> patterns(N);
    vector<string> words(M);

    // 读取模板
    for (int i = 0; i < N; ++i) cin >> patterns[i];

    // 读取单词
    for (int i = 0; i < M; ++i) cin >> words[i];

    // 对于每个单词，查找匹配的模板
    for (const auto& word : words) {
        vector<int> matches;

        // 遍历每个模板，检查是否匹配
        for (int i = 0; i < N; ++i) {
            if (isMatch(word, patterns[i]))
                matches.push_back(i);
        }

        // 输出匹配的模板编号
        if (matches.empty())
            cout << "Not match" << endl;
        else {
            for (int i : matches)
                cout << i << " ";
            cout << endl;
        }
    }

    return 0;
}