!function () {
    function l() {
        var c, a = window.location.hostname, b = a.split(".");
        return size = b.length, c = "." + b[size - 2] + "." + b[size - 1]
    }

    function m() {
        return navigator.language || navigator.userLanguage || navigator.browserLanguage || navigator.systemLanguage
    }

    function n() {
        return navigator.vendor
    }

    function o() {
        return navigator.platform
    }

    function p() {
        return screen.width + "*" + screen.height
    }

    function q(a, b, c, d) {
        var e = arguments.length;
        document.cookie = 3 == e ? a + "=" + b + ";path=/;domain=" + c : a + "=" + b + ";path=/;domain=" + c + ";expires=" + d
    }

    function r(a) {
        var e, f, b = document.cookie, c = s(b), d = c.split(";");
        for (e = 0; e < d.length; e++)if (f = d[e].split("="), f.length > 1 && f[0] == a)return f[1];
        return ""
    }

    function s(a) {
        var c, d, b = "";
        for (c = 0; c < a.length; c++)d = a.charAt(c), " " != d && (b += d);
        return b
    }

    function t() {
        return b.round(2147483647 * b.random())
    }

    function v(a) {
        var b = document.createElement("a");
        return b.href = a, b.hostname
    }

    function w() {
        var a = new Date, b = a.getTime() + "_" + Math.round(1e4 * Math.random());
        return b
    }

    function x() {
        var b, a = "";
        if (e == [])return "";
        for (b in e)a += "&" + b + "=" + encodeURIComponent(e[b]);
        return a
    }

    function y(a) {
        var c, b = document.createElement("script");
        b.type = "text/javascript", b.async = !0, b.src = a, c = document.getElementsByTagName("script")[0], c.parentNode.insertBefore(b, c)
    }

    function z() {
        var c, d, g, h, i, s, u, x, y, z, C, D, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, a = document.location.href.replace(/&/g, "|"), b = document.referrer.replace(/&/g, "|");
        return b = b.toLowerCase(), b && (c = v(b), d = r("lastsource"), d && q("lastsource", d, l()), (c.indexOf(".mi.com") < 0 || c.indexOf("s1.mi.com") > -1 || c.indexOf("p.www.xiaomi.com") > -1 || c.indexOf("a.union.mi.com") > -1) && q("lastsource", c, l())), g = r("xm_www_sid"), h = r("mstuid"), i = r("muuid"), s = r("mucid"), u = r("mutid"), x = r("mstz") || "", ("" === x || x.split("|").length < 3) && (y = [], y[0] = "", y[1] = "", y[2] = t().toString() + "." + 0, z = "mstz", C = y.join("|"), q(z, C, l())), x = r("mstz"), D = x.split("|") || [], 4 == D.length ? 0 : 1, F = D[0] || "", G = D[1] || "", H = [], H = D[2].split("."), I = H[0], J = parseInt(H[1]) + 1, D[2] = H[0] + "." + J.toString(), K = D[3] || "", L = D[4] || "", M = D[5] || "", N = 0, O = encodeURIComponent(b), "" == O && (L = "", M = ""), O != L && a != b ? (M = L, L = O) : "" != O && (N = 1), D[3] = K, D[4] = L, D[5] = M, q("mstz", D.join("|"), l()), P = r("lastsource"), Q = 0, R = new Date, R.setTime(R.getTime() + 62208e6), "" === h && (Q = 1, h = w()), q("mstuid", h, l(), R.toGMTString()), S = "", T = new Date, e["curl"] = void 0 === e["curl"] || "" == e["curl"] ? location.href : e["curl"], e["xmv"] = B(h), e["v"] = f, void 0 === e["vuuid"] && (e["vuuid"] = A(16, 32)), U = r("userId"), V = "", j && (U || (U = k("get_encrypt_uid")), V = k("get_shop_deviceid")), S = "mid=" + (r("euid") || U) + "&device_id=" + V + "&phpsessid=" + g + "&mstuid=" + h + "&muuid=" + i + "&mucid=" + s + "&sessionId=" + I + "&step=" + J + "&new_visitor=" + Q + "&mstprevpid=" + encodeURIComponent(F) + "&mstprev_pid_loc=" + K + "&prevtarget=" + G + "&lastsource=" + P + "&timestamp=" + T.getTime() + "&ref=" + O + "&domain=" + l() + "&screen=" + p() + "&language=" + m() + "&vendor=" + n() + "&platform=" + o() + "&gu=" + M + "&pu=" + L + "&rf=" + N + "&mutid=" + u + "&muwd=" + encodeURIComponent(r("muwd"))
    }

    function A(a, b) {
        var e, f, c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split(""), d = [];
        if (b = b || c.length, a)for (e = 0; a > e; e++)d[e] = c[0 | Math.random() * b]; else for (d[8] = d[13] = d[18] = d[23] = "-", d[14] = "4", e = 0; 36 > e; e++)d[e] || (f = 0 | 16 * Math.random(), d[e] = c[19 == e ? 8 | 3 & f : f]);
        return d.join("")
    }

    function B(a) {
        var g, b = r("xm_vistor"), c = !0, d = "", e = 0, f = (new Date).getTime();
        return "" !== b && (g = b.split("-"), 2 == g.length && (d = g[0], e = g[1], 18e5 >= f - e && (c = !1))), c && (d = a + "_" + f), e = f, q("xm_vistor", d + "-" + e, l()), d
    }

    function C() {
        var b, c, d, e, a = window.performance || window.webkitPerformance;
        if (a = a && a.timing, !a)return "";
        b = a.navigationStart, c = [], c["ldns"] = a.domainLookupEnd - a.domainLookupStart, c["con"] = a.connectEnd - a.connectStart, c["res"] = a.responseStart - a.requestStart, c["down"] = a.responseEnd - a.responseStart, c["redi"] = a.fetchStart - b, d = "";
        for (e in c)d += "&" + e + "=" + c[e];
        return d
    }

    function D(a) {
        y(a)
    }

    function E(a) {
        return "function" == typeof a
    }

    function K(a, b) {
        var c, d = document.head || document.getElementsByTagName("head")[0] || document.documentElement;
        c = document.createElement("script"), c.async = "async", c.src = a, c.onload = c.onreadystatechange = function () {
            (!c.readyState || /loaded|complete/.test(c.readyState)) && (c.onload = c.onreadystatechange = null, d && c.parentNode && d.removeChild(c), c = void 0, b())
        }, d.insertBefore(c, d.firstChild)
    }

    function N() {
        var b, c, d, f, g, a = "";
        if (O(e["domain_id"], M)) {
            for (b = window.location.href, c = !0, d = 0; d < L.length && c; d++)-1 != b.indexOf(L[d]) && (c = !1);
            c && (a = P(), f = new Date, g = function () {
                y("//c1.mifile.cn/f/i/15/stat/js/jquery.statData.min.js?d=" + f.getFullYear() + (f.getMonth() + 1) + f.getDate())
            }, "undefined" != typeof jQuery || /http(s)?:\/\/m\.mi\.com/i.test(location.href) ? g() : K("//s01.mifile.cn/js/lib/jquery.min.js", g))
        }
        return e["pageid"] = a, e["pageid"]
    }

    function O(a, b) {
        for (var c in b)if (b[c] == a)return !0;
        return !1
    }

    function P() {
        var a = /\/(index.php|index.html|index.htm|index)$/, b = location.protocol + "//", c = location.host, d = location.pathname.replace(a, "/"), e = b + c + d;
        return md5("undefined" != typeof _STAT_HASHNAME && "" != _STAT_HASHNAME ? _STAT_HASHNAME : e)
    }

    var J, L, M, Q, R, S, T, U, a = "prototype", b = Math, e = [], f = "1.4.09", g = navigator.userAgent.toLowerCase(), h = window.WE || {}, j = function () {
        return "undefined" != typeof WE && -1 !== g.indexOf("xiaomi/miuibrowser/4.3/shop") && -1 === g.indexOf("iphone") ? !0 : !1
    }(), k = function (a) {
        return h.triggerString && h.triggerString(a, "") || ""
    }, F = function () {
        this.p = []
    }, G = F[a], I = "(http|https)://item.mi.com/([0-9]+).html.*";
    I = new RegExp(I), J = new Object, G.trackPerformance = function (a) {
        var c, d, e, b = z();
        _mi_ti = a[0], c = [], "undefined" != typeof _mi_ti && ("undefined" != typeof _mi_ti.fs && (c["fs"] = _mi_ti.fs), "undefined" != typeof _mi_ti.ws && (c["ws"] = _mi_ti.ws), "undefined" != typeof _mi_ti.ua && (c["ua"] = _mi_ti.ua), "undefined" != typeof _mi_ti.td && (c["td"] = _mi_ti.td)), d = x();
        for (e in c)d += "&" + e + "=" + c[e];
        D(Q + b + d + "&type=performance")
    }, G.trackJSError = function (a) {
        var c, d, e, b = z();
        _mi_je = a[0], c = [], "undefined" != typeof _mi_je && ("undefined" != typeof _mi_je.ec && (c["ec"] = _mi_je.ec), "undefined" != typeof _mi_je.us && (c["us"] = _mi_je.us)), d = x();
        for (e in c)d += "&" + e + "=" + c[e];
        D(Q + b + d + "&type=jserror")
    }, G.trackPanelShow = function (a) {
        var b, c, d, e, f, g, h, i, j, k, l, m, n;
        if (!(a.length < 2) && (b = a[0], c = encodeURIComponent(a[1]), d = document.getElementById(b), "undefined" != typeof d && null != d))try {
            for (e = d.getElementsByTagName("a"), f = "", g = z() + x(), h = 0, i = 0; i < e.length; i++)j = e[i].getAttribute("data-stat-pid"), k = e[i].getAttribute("data-stat-aid"), null != j && null != k && (l = e[i].getAttribute("href"), m = k + "+" + j, "undefined" == typeof J[m] && (I.test(l) && (n = I.exec(l), "object" == typeof n && n.length >= 3 && (l = n[2])), f += k + "+" + j + "+" + l + ";", h++, J[m] = 1, 0 == h % 20 && "" != f && (D(Q + g + "&type=sp&spt=" + c + "&log=" + encodeURIComponent(f)), f = "")));
            "" != f && D(Q + g + "&type=sp&spt=" + c + "&log=" + encodeURIComponent(f))
        } catch (o) {
        }
    }, G.trackPageView = function () {
        var a, b, c, d;
        N(), a = z(), varParam = x(), b = C(), D(Q + a + b + varParam), c = new Date, d = encodeURIComponent(window.location.href), c.setTime(c.getTime() + 18e4), q("msttime", d, l(), c.toGMTString()), c.setTime(c.getTime() - 12e4), q("msttime1", d, l(), c.toGMTString())
    }, G.push = function (a) {
        return E(a[0]) ? (a[0](a.slice(1)), void 0) : (G[a[0]](a.slice(1)), void 0)
    }, G.setDomainId = function (a) {
        e["domain_id"] = a[0]
    }, G.setUid = function (a) {
        e["uid"] = a[0]
    }, G.setVars = function (a) {
        e[a[0]] = a[1]
    }, G.getDomainId = function () {
        return e["domain_id"]
    }, G.getVars = function (a) {
        return e[a]
    }, G.trackEvent = function (a) {
        var z, A, B, C, E, F, G, H, c = "", d = "", e = "", g = "", h = new Date, i = r("mstz").split("|") || [], s = "", u = "", v = "", w = "", y = 0;
        i.length >= 3 && (s = i[0], u = i[1], v = i[2].split(".")[0] || t().toString() + "." + 0), c = a[0], d = encodeURIComponent(a[1]), e = a[2], i[0] = c, w = i[3] || "", w != e && (i[3] = e, y = 1), z = [], z = i[2].split("."), v = z[0], a[3] && (g = encodeURIComponent(a[3])), h = new Date, A = r("xm_www_sid"), u != d && (i[1] = d, y = 1), y && q("mstz", i.join("|"), l()), B = r("userId"), C = "", j && (B || (B = k("get_encrypt_uid")), C = k("get_shop_deviceid")), E = "mid=" + (r("euid") || B) + "&device_id=" + C + "&phpsessid=" + A + "&mstuid=" + r("mstuid") + "&sessionId=" + v + "&muuid=" + r("muuid") + "&mucid=" + r("mucid") + "&mstprevpid=" + s + "&lastsource=" + r("lastsource") + "&timestamp=" + h.getTime() + "&domain=" + l() + "&screen=" + p() + "&language=" + m() + "&vendor=" + n() + "&platform=" + o(), F = "", G = new Date, G.setTime(G.getTime() + 18e5), q("log_code", encodeURIComponent(c) + "|" + encodeURIComponent(location.href), l(), G.toGMTString()), F = "mstpid=" + encodeURIComponent(c) + "&" + E + "&target=" + d + "&prevtarget=" + u + "&pid_loc=" + e + "&mstprev_pid_loc=" + w + "&log_code=" + g, H = x(), D(Q + F + H)
    }, L = new Array("http://service.order.mi.com/cservice", "http://me.mi.com", "https://service.order.mi.com/cservice", "https://me.mi.com"), M = new Array(100, 101, 127, 128, 129, 130, 131), function (a) {
        "use strict";
        function b(a, b) {
            var c = (65535 & a) + (65535 & b), d = (a >> 16) + (b >> 16) + (c >> 16);
            return d << 16 | 65535 & c
        }

        function c(a, b) {
            return a << b | a >>> 32 - b
        }

        function d(a, d, e, f, g, h) {
            return b(c(b(b(d, a), b(f, h)), g), e)
        }

        function e(a, b, c, e, f, g, h) {
            return d(b & c | ~b & e, a, b, f, g, h)
        }

        function f(a, b, c, e, f, g, h) {
            return d(b & e | c & ~e, a, b, f, g, h)
        }

        function g(a, b, c, e, f, g, h) {
            return d(b ^ c ^ e, a, b, f, g, h)
        }

        function h(a, b, c, e, f, g, h) {
            return d(c ^ (b | ~e), a, b, f, g, h)
        }

        function i(a, c) {
            a[c >> 5] |= 128 << c % 32, a[(c + 64 >>> 9 << 4) + 14] = c;
            var d, i, j, k, l, m = 1732584193, n = -271733879, o = -1732584194, p = 271733878;
            for (d = 0; d < a.length; d += 16)i = m, j = n, k = o, l = p, m = e(m, n, o, p, a[d], 7, -680876936), p = e(p, m, n, o, a[d + 1], 12, -389564586), o = e(o, p, m, n, a[d + 2], 17, 606105819), n = e(n, o, p, m, a[d + 3], 22, -1044525330), m = e(m, n, o, p, a[d + 4], 7, -176418897), p = e(p, m, n, o, a[d + 5], 12, 1200080426), o = e(o, p, m, n, a[d + 6], 17, -1473231341), n = e(n, o, p, m, a[d + 7], 22, -45705983), m = e(m, n, o, p, a[d + 8], 7, 1770035416), p = e(p, m, n, o, a[d + 9], 12, -1958414417), o = e(o, p, m, n, a[d + 10], 17, -42063), n = e(n, o, p, m, a[d + 11], 22, -1990404162), m = e(m, n, o, p, a[d + 12], 7, 1804603682), p = e(p, m, n, o, a[d + 13], 12, -40341101), o = e(o, p, m, n, a[d + 14], 17, -1502002290), n = e(n, o, p, m, a[d + 15], 22, 1236535329), m = f(m, n, o, p, a[d + 1], 5, -165796510), p = f(p, m, n, o, a[d + 6], 9, -1069501632), o = f(o, p, m, n, a[d + 11], 14, 643717713), n = f(n, o, p, m, a[d], 20, -373897302), m = f(m, n, o, p, a[d + 5], 5, -701558691), p = f(p, m, n, o, a[d + 10], 9, 38016083), o = f(o, p, m, n, a[d + 15], 14, -660478335), n = f(n, o, p, m, a[d + 4], 20, -405537848), m = f(m, n, o, p, a[d + 9], 5, 568446438), p = f(p, m, n, o, a[d + 14], 9, -1019803690), o = f(o, p, m, n, a[d + 3], 14, -187363961), n = f(n, o, p, m, a[d + 8], 20, 1163531501), m = f(m, n, o, p, a[d + 13], 5, -1444681467), p = f(p, m, n, o, a[d + 2], 9, -51403784), o = f(o, p, m, n, a[d + 7], 14, 1735328473), n = f(n, o, p, m, a[d + 12], 20, -1926607734), m = g(m, n, o, p, a[d + 5], 4, -378558), p = g(p, m, n, o, a[d + 8], 11, -2022574463), o = g(o, p, m, n, a[d + 11], 16, 1839030562), n = g(n, o, p, m, a[d + 14], 23, -35309556), m = g(m, n, o, p, a[d + 1], 4, -1530992060), p = g(p, m, n, o, a[d + 4], 11, 1272893353), o = g(o, p, m, n, a[d + 7], 16, -155497632), n = g(n, o, p, m, a[d + 10], 23, -1094730640), m = g(m, n, o, p, a[d + 13], 4, 681279174), p = g(p, m, n, o, a[d], 11, -358537222), o = g(o, p, m, n, a[d + 3], 16, -722521979), n = g(n, o, p, m, a[d + 6], 23, 76029189), m = g(m, n, o, p, a[d + 9], 4, -640364487), p = g(p, m, n, o, a[d + 12], 11, -421815835), o = g(o, p, m, n, a[d + 15], 16, 530742520), n = g(n, o, p, m, a[d + 2], 23, -995338651), m = h(m, n, o, p, a[d], 6, -198630844), p = h(p, m, n, o, a[d + 7], 10, 1126891415), o = h(o, p, m, n, a[d + 14], 15, -1416354905), n = h(n, o, p, m, a[d + 5], 21, -57434055), m = h(m, n, o, p, a[d + 12], 6, 1700485571), p = h(p, m, n, o, a[d + 3], 10, -1894986606), o = h(o, p, m, n, a[d + 10], 15, -1051523), n = h(n, o, p, m, a[d + 1], 21, -2054922799), m = h(m, n, o, p, a[d + 8], 6, 1873313359), p = h(p, m, n, o, a[d + 15], 10, -30611744), o = h(o, p, m, n, a[d + 6], 15, -1560198380), n = h(n, o, p, m, a[d + 13], 21, 1309151649), m = h(m, n, o, p, a[d + 4], 6, -145523070), p = h(p, m, n, o, a[d + 11], 10, -1120210379), o = h(o, p, m, n, a[d + 2], 15, 718787259), n = h(n, o, p, m, a[d + 9], 21, -343485551), m = b(m, i), n = b(n, j), o = b(o, k), p = b(p, l);
            return [n, o]
        }

        function j(a) {
            var b, c = "";
            for (b = 0; b < 32 * a.length; b += 8)c += String.fromCharCode(255 & a[b >> 5] >>> b % 32);
            return c
        }

        function k(a) {
            var b, c = [];
            for (c[(a.length >> 2) - 1] = void 0, b = 0; b < c.length; b += 1)c[b] = 0;
            for (b = 0; b < 8 * a.length; b += 8)c[b >> 5] |= (255 & a.charCodeAt(b / 8)) << b % 32;
            return c
        }

        function l(a) {
            return j(i(k(a), 8 * a.length))
        }

        function m(a, b) {
            var c, g, d = k(a), e = [], f = [];
            for (e[15] = f[15] = void 0, d.length > 16 && (d = i(d, 8 * a.length)), c = 0; 16 > c; c += 1)e[c] = 909522486 ^ d[c], f[c] = 1549556828 ^ d[c];
            return g = i(e.concat(k(b)), 512 + 8 * b.length), j(i(f.concat(g), 640))
        }

        function n(a) {
            var d, e, b = "0123456789abcdef", c = "";
            for (e = 0; e < a.length; e += 1)d = a.charCodeAt(e), c += b.charAt(15 & d >>> 4) + b.charAt(15 & d);
            return c
        }

        function o(a) {
            return unescape(encodeURIComponent(a))
        }

        function p(a) {
            return l(o(a))
        }

        function q(a) {
            return n(p(a))
        }

        function r(a, b) {
            return m(o(a), o(b))
        }

        function s(a, b) {
            return n(r(a, b))
        }

        function t(a, b, c) {
            return b ? c ? r(b, a) : s(b, a) : c ? p(a) : q(a)
        }

        window.md5 = t, "function" == typeof define && define.amd ? define(function () {
                return t
            }) : a.md5 = t
    }(this), Q = "//a.stat.xiaomi.com/js/mstr.js?", R = new F, R.p = window._msq, S = function () {
        for (i = 0; i < R.p.length; i++)R.push(R.p[i])
    }, "undefined" != typeof window._msq && (/http(s)?:\/\/m\.mi\.com/i.test(location.href) ? (U = document.getElementById("wrapper"), U.childNodes && U.childNodes.length ? S() : T = window.setInterval(function () {
                U.childNodes && U.childNodes.length && (window.clearInterval(T), S())
            }, 100)) : S()), window._msq = R, (100 == e["domain_id"] || 101 == e["domain_id"]) && y("//c1.mifile.cn/f/i/15/stat/js/unjcV2.js")
}();
