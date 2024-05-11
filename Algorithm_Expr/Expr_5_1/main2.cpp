#include <iostream>
#include <string.h>
using namespace std;
int map[101][101];

int R, C;

int dp(int i, int j) {
    int res, max = 0;
    if (i - 1 >= 0)
        if (map[i - 1][j] < map[i][j])
            if (max < dp(i - 1, j)) max = dp(i - 1, j);
    if (i + 1 < R)
        if (map[i + 1][j] < map[i][j])
            if (max < dp(i + 1, j)) max = dp(i + 1, j);
    if (j - 1 >= 0)
        if (map[i][j - 1] < map[i][j])
            if (max < dp(i, j - 1)) max = dp(i, j - 1);
    if (j + 1 < C)
        if (map[i][j + 1] < map[i][j])
            if (max < dp(i, j + 1)) max = dp(i, j + 1);
    res = max + 1;
    return res;
}

int main() {
    freopen("data.in", "r", stdin);
    int i, j, ans, max;
    scanf("%d%d", &R, &C);
    for (i = 0; i < R; i++)
        for (j = 0; j < C; j++)
            scanf("%d", &map[i][j]);
    max = 0;
    for (i = 0; i < R; i++) {
        for (j = 0; j < C; j++) {
            ans = dp(i, j);
            if (ans > max) max = ans;
        }
    }
    printf("%d\n", max);
    return 0;
}
