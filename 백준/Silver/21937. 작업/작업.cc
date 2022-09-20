#include <bits/stdc++.h>
#define fastio ios::sync_with_stdio(0), cin.tie(0)
using namespace std;
using ll = long long;
using pii = pair<int, int>;
#define all(v) v.begin(), v.end()

int dx[8] = {1, 0, -1, 0, 1, -1, -1, 1};
int dy[8] = {0, 1, 0, -1, 1, 1, -1, -1};

vector<int_fast64_t> adj[100005];
bool visited[100005];
int n, m, src;

void input() {
    cin >> n >> m;
    for(int i = 0; i < m; ++i) {
        int a, b; cin >> a >> b;
        adj[b].push_back(a);
    }
    cin >> src;
}

int d(int from) {
    
    int ret = 0;

    for(auto to : adj[from]) {
        if(visited[to]) continue;
        visited[to] = true;
        ret += d(to) + 1;
    }
    return ret;
}

int main() {
    fastio;
    input();

    cout << d(src);
    
    return 0;
}