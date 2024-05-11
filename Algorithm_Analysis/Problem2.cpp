#include <iostream>
#include <vector>
using namespace std;

#define MAXN 9
#define MAXM 1000000

int fcount = 0;
vector<vector<int>> arranges;

// 深度搜索求全排列
void dfs(int cur, int n, vector<int>& a, vector<int>& vis) {
    if (cur == n + 1) {
        arranges.push_back(a);
        fcount++;
        return;
    }
    for (int i = 1; i <= n; i++) {
        if (!vis[i]) {
            a[cur] = i;
            vis[i] = 1;
            dfs(cur + 1, n, a, vis);
            vis[i] = 0;
        }
    }
}

// 判断两个数是否能组成一对
bool isCombine(int start, int end, vector<int>& num) {
    int num1 = num[start], num2 = num[end];
    while (start < end - 1) {
        if (num1 < num[start + 1] || num2 < num[start + 1]) return false;
        start++;
    }
    return true;
}

int main() {
    int n, m;
    cin >> n >> m;

    // 对数组进行全排列
    vector<int> a(n + 1), vis(n + 1, 0);
    dfs(1, n, a, vis);

    int result = 0;
    for (int i = 0; i < fcount; i++) {
        int mcount = n - 1;
        for (int j = 1; j <= n - 2; j++)
            for (int k = j + 2; k <= n; k++) {
                mcount += isCombine(j, k, arranges[i]);
                cout << i << " " << j << " " << k << " " << mcount << " " << result << endl;
            }
        if (mcount == m) result++;
    }

    cout << result;
    return 0;
}
