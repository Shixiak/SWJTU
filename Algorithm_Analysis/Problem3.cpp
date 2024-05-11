#include <iostream>
using namespace std;

int N, ans;
int count = 0;

void dfs(int x, int block) {
    cout << ++count << " " << x << " " << block << " "<< ans << endl;
    if (block == 0) {
        ans++;
        return;
    }

    if (x < 1) return;

    for (int j = 1; j < x; j++) {
        if (block - (x - j) < 0) continue;
        dfs(x - j, block - (x - j));
    }
}

int main() {
    cout << "请输入积木数N：" << endl;
    cin >> N;
    ans = 0;
    dfs(N, N);
    cout << "总的楼梯搭建方法为：" << ans << endl;

    return 0;
}
