.class public Lcom/google/android/gms/internal/lm;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/in;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/lm$d;,
        Lcom/google/android/gms/internal/lm$e;,
        Lcom/google/android/gms/internal/lm$c;,
        Lcom/google/android/gms/internal/lm$b;,
        Lcom/google/android/gms/internal/lm$a;
    }
.end annotation


# static fields
.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field protected a:Lcom/google/android/gms/internal/ll;

.field protected b:Lcom/google/android/gms/ads/internal/safebrowsing/c;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ei;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Lcom/google/android/gms/ads/internal/client/a;

.field private h:Lcom/google/android/gms/ads/internal/overlay/h;

.field private i:Lcom/google/android/gms/internal/lm$a;

.field private j:Lcom/google/android/gms/internal/lm$b;

.field private k:Lcom/google/android/gms/internal/ee;

.field private l:Lcom/google/android/gms/internal/lm$c;

.field private m:Z

.field private n:Lcom/google/android/gms/internal/ek;

.field private o:Lcom/google/android/gms/internal/em;

.field private p:Z

.field private q:Z

.field private r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private s:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private t:Z

.field private u:Lcom/google/android/gms/ads/internal/overlay/q;

.field private final v:Lcom/google/android/gms/internal/gz;

.field private w:Lcom/google/android/gms/ads/internal/e;

.field private x:Lcom/google/android/gms/internal/gv;

.field private y:Lcom/google/android/gms/internal/hb;

.field private z:Lcom/google/android/gms/internal/lm$e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UNKNOWN"

    aput-object v1, v0, v3

    const-string v1, "HOST_LOOKUP"

    aput-object v1, v0, v4

    const-string v1, "UNSUPPORTED_AUTH_SCHEME"

    aput-object v1, v0, v5

    const-string v1, "AUTHENTICATION"

    aput-object v1, v0, v6

    const-string v1, "PROXY_AUTHENTICATION"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "REDIRECT_LOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "UNSUPPORTED_SCHEME"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "FAILED_SSL_HANDSHAKE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "BAD_URL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "FILE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "FILE_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "TOO_MANY_REQUESTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/lm;->c:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NOT_YET_VALID"

    aput-object v1, v0, v3

    const-string v1, "EXPIRED"

    aput-object v1, v0, v4

    const-string v1, "ID_MISMATCH"

    aput-object v1, v0, v5

    const-string v1, "UNTRUSTED"

    aput-object v1, v0, v6

    const-string v1, "DATE_INVALID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "INVALID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/lm;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ll;Z)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/gz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ll;->g()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/co;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ll;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/co;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/gz;-><init>(Lcom/google/android/gms/internal/ll;Landroid/content/Context;Lcom/google/android/gms/internal/co;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/lm;-><init>(Lcom/google/android/gms/internal/ll;ZLcom/google/android/gms/internal/gz;Lcom/google/android/gms/internal/gv;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ll;ZLcom/google/android/gms/internal/gz;Lcom/google/android/gms/internal/gv;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lm;->m:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/lm;->p:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/lm;->v:Lcom/google/android/gms/internal/gz;

    iput-object p4, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/lm;)Lcom/google/android/gms/internal/lm$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->l:Lcom/google/android/gms/internal/lm$c;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/lm;Lcom/google/android/gms/internal/lm$c;)Lcom/google/android/gms/internal/lm$c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lm;->l:Lcom/google/android/gms/internal/lm$c;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/google/android/gms/internal/cw;->bc:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "err"

    invoke-virtual {v4, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->e()Lcom/google/android/gms/internal/ki;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ll;->o()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->b:Ljava/lang/String;

    const-string v3, "gmob-apps"

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ki;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private static b(Landroid/net/Uri;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->j:Lcom/google/android/gms/internal/lm$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->j:Lcom/google/android/gms/internal/lm$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/lm$b;->a(Lcom/google/android/gms/internal/ll;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->j:Lcom/google/android/gms/internal/lm$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/ads/internal/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->w:Lcom/google/android/gms/ads/internal/e;

    return-object v0
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gv;->c(II)V

    :cond_0
    return-void
.end method

.method public a(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->v:Lcom/google/android/gms/internal/gz;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/gz;->a(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gv;->a(IIZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 8

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->e()Lcom/google/android/gms/internal/ki;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ki;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v3

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/kd;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Received GMSG: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ei;

    iget-object v2, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/internal/ll;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "No GMSG handler found for GMSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/lm;->q:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->B()V

    iput-object p1, p0, Lcom/google/android/gms/internal/lm;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/lm;->s:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/h;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/ads/internal/overlay/q;ZLcom/google/android/gms/internal/ek;Lcom/google/android/gms/internal/em;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/hb;Lcom/google/android/gms/ads/internal/safebrowsing/c;)V
    .locals 3

    if-nez p8, :cond_0

    new-instance p8, Lcom/google/android/gms/ads/internal/e;

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p8, v0}, Lcom/google/android/gms/ads/internal/e;-><init>(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/gv;

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-direct {v0, v1, p9}, Lcom/google/android/gms/internal/gv;-><init>(Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/internal/hb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    iput-object p10, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/ads/internal/safebrowsing/c;

    const-string v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/internal/ec;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/ec;-><init>(Lcom/google/android/gms/internal/ee;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/backButton"

    sget-object v1, Lcom/google/android/gms/internal/eh;->l:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/refresh"

    sget-object v1, Lcom/google/android/gms/internal/eh;->m:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/internal/eh;->b:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/canOpenIntents"

    sget-object v1, Lcom/google/android/gms/internal/eh;->c:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/eh;->d:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/close"

    sget-object v1, Lcom/google/android/gms/internal/eh;->e:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/internal/eh;->g:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/internal/eh;->q:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/internal/eh;->s:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/delayPageClosed"

    sget-object v1, Lcom/google/android/gms/internal/eh;->t:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/getLocationInfo"

    sget-object v1, Lcom/google/android/gms/internal/eh;->u:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/internal/eh;->h:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/eh;->i:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/mraid"

    new-instance v1, Lcom/google/android/gms/internal/eo;

    iget-object v2, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    invoke-direct {v1, p8, v2}, Lcom/google/android/gms/internal/eo;-><init>(Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/gv;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/mraidLoaded"

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->v:Lcom/google/android/gms/internal/gz;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/open"

    new-instance v1, Lcom/google/android/gms/internal/ep;

    iget-object v2, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    invoke-direct {v1, p6, p8, v2}, Lcom/google/android/gms/internal/ep;-><init>(Lcom/google/android/gms/internal/ek;Lcom/google/android/gms/ads/internal/e;Lcom/google/android/gms/internal/gv;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/precache"

    sget-object v1, Lcom/google/android/gms/internal/eh;->p:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/touch"

    sget-object v1, Lcom/google/android/gms/internal/eh;->k:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/eh;->n:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/internal/eh;->o:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    const-string v0, "/appStreaming"

    sget-object v1, Lcom/google/android/gms/internal/eh;->f:Lcom/google/android/gms/internal/ei;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    if-eqz p7, :cond_1

    const-string v0, "/setInterstitialProperties"

    new-instance v1, Lcom/google/android/gms/internal/el;

    invoke-direct {v1, p7}, Lcom/google/android/gms/internal/el;-><init>(Lcom/google/android/gms/internal/em;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/lm;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/lm;->g:Lcom/google/android/gms/ads/internal/client/a;

    iput-object p2, p0, Lcom/google/android/gms/internal/lm;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    iput-object p3, p0, Lcom/google/android/gms/internal/lm;->k:Lcom/google/android/gms/internal/ee;

    iput-object p6, p0, Lcom/google/android/gms/internal/lm;->n:Lcom/google/android/gms/internal/ek;

    iput-object p4, p0, Lcom/google/android/gms/internal/lm;->u:Lcom/google/android/gms/ads/internal/overlay/q;

    iput-object p8, p0, Lcom/google/android/gms/internal/lm;->w:Lcom/google/android/gms/ads/internal/e;

    iput-object p9, p0, Lcom/google/android/gms/internal/lm;->y:Lcom/google/android/gms/internal/hb;

    iput-object p7, p0, Lcom/google/android/gms/internal/lm;->o:Lcom/google/android/gms/internal/em;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/lm;->a(Z)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->p()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ll;->k()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/lm;->u:Lcom/google/android/gms/ads/internal/overlay/q;

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ll;->o()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/h;Lcom/google/android/gms/ads/internal/overlay/q;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/lm;->g:Lcom/google/android/gms/ads/internal/client/a;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/lm;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    goto :goto_1
.end method

.method public a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->b()Z

    move-result v0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->c()Lcom/google/android/gms/ads/internal/overlay/f;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ll;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v3, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/f;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/ads/internal/safebrowsing/c;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->b:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;->c:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/ads/internal/safebrowsing/c;

    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/internal/safebrowsing/c;->a(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/ll;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/lm$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lm;->i:Lcom/google/android/gms/internal/lm$a;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/lm$b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lm;->j:Lcom/google/android/gms/internal/lm$b;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/lm$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lm;->l:Lcom/google/android/gms/internal/lm$c;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/lm$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/lm;->z:Lcom/google/android/gms/internal/lm$e;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/lm;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/lm;->m:Z

    return-void
.end method

.method public final a(ZI)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->p()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ll;->k()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/lm;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    iget-object v3, p0, Lcom/google/android/gms/internal/lm;->u:Lcom/google/android/gms/ads/internal/overlay/q;

    iget-object v4, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    iget-object v5, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ll;->o()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/h;Lcom/google/android/gms/ads/internal/overlay/q;Lcom/google/android/gms/internal/ll;ZILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->g:Lcom/google/android/gms/ads/internal/client/a;

    goto :goto_0
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->p()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ll;->k()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/lm;->k:Lcom/google/android/gms/internal/ee;

    iget-object v4, p0, Lcom/google/android/gms/internal/lm;->u:Lcom/google/android/gms/ads/internal/overlay/q;

    iget-object v5, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    iget-object v6, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ll;->o()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/lm;->n:Lcom/google/android/gms/internal/ek;

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/h;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/ads/internal/overlay/q;Lcom/google/android/gms/internal/ll;ZILjava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ek;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->g:Lcom/google/android/gms/ads/internal/client/a;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/lm$d;

    iget-object v3, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    iget-object v4, p0, Lcom/google/android/gms/internal/lm;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/lm$d;-><init>(Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/ads/internal/overlay/h;)V

    goto :goto_1
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->p()Z

    move-result v2

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ll;->k()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/lm;->k:Lcom/google/android/gms/internal/ee;

    iget-object v4, p0, Lcom/google/android/gms/internal/lm;->u:Lcom/google/android/gms/ads/internal/overlay/q;

    iget-object v5, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    iget-object v6, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ll;->o()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gms/internal/lm;->n:Lcom/google/android/gms/internal/ek;

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/a;Lcom/google/android/gms/ads/internal/overlay/h;Lcom/google/android/gms/internal/ee;Lcom/google/android/gms/ads/internal/overlay/q;Lcom/google/android/gms/internal/ll;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ek;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->g:Lcom/google/android/gms/ads/internal/client/a;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/lm$d;

    iget-object v3, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    iget-object v4, p0, Lcom/google/android/gms/internal/lm;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/lm$d;-><init>(Lcom/google/android/gms/internal/ll;Lcom/google/android/gms/ads/internal/overlay/h;)V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Lcom/google/android/gms/internal/ei;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/lm;->p:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/lm;->q:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->r:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->s:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/lm;->t:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lm;->A:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    const-string v2, "about:blank"

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ll;->a(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/ads/internal/safebrowsing/c;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ki;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/lm$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/lm$1;-><init>(Lcom/google/android/gms/internal/lm;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/lm;->t:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/lm;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/lm;->D:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lm;->l()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public j()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/lm;->D:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/lm;->D:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lm;->l()V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lm;->C:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lm;->l()V

    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->i:Lcom/google/android/gms/internal/lm$a;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/lm;->B:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/lm;->D:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/lm;->C:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->i:Lcom/google/android/gms/internal/lm$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/lm;->C:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/lm$a;->a(Lcom/google/android/gms/internal/ll;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->i:Lcom/google/android/gms/internal/lm$a;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->E()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/ads/internal/safebrowsing/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/ads/internal/safebrowsing/c;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/safebrowsing/c;->a()V

    iput-object v1, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/ads/internal/safebrowsing/c;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->g:Lcom/google/android/gms/ads/internal/client/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->h:Lcom/google/android/gms/ads/internal/overlay/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->i:Lcom/google/android/gms/internal/lm$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->j:Lcom/google/android/gms/internal/lm$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->k:Lcom/google/android/gms/internal/ee;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lm;->m:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lm;->p:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lm;->q:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lm;->t:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->n:Lcom/google/android/gms/internal/ek;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->u:Lcom/google/android/gms/ads/internal/overlay/q;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->l:Lcom/google/android/gms/internal/lm$c;

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gv;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/lm;->x:Lcom/google/android/gms/internal/gv;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public n()Lcom/google/android/gms/internal/lm$e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->z:Lcom/google/android/gms/internal/lm$e;

    return-object v0
.end method

.method public final o()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/lm;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lm;->p:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->e()Lcom/google/android/gms/internal/ki;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/lm$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/lm$2;-><init>(Lcom/google/android/gms/internal/lm;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ki;->a(Ljava/lang/Runnable;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lm;->a(Landroid/net/Uri;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/lm;->A:Z

    if-eqz v0, :cond_0

    const-string v0, "Blank page loaded, 1..."

    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ll;->s()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/lm;->B:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/lm;->p()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/lm;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-gez p2, :cond_0

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/lm;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/lm;->c:[Ljava/lang/String;

    neg-int v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ll;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/google/android/gms/internal/lm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/lm;->d:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/lm;->d:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ll;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssl_err"

    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->g()Lcom/google/android/gms/internal/kj;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/kj;->a(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/lm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/cache/CacheOffering;->a(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/cache/CacheOffering;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/u;->j()Lcom/google/android/gms/ads/internal/cache/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/cache/a;->a(Lcom/google/android/gms/ads/internal/cache/CacheOffering;)Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/cache/CacheEntryParcel;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 8

    const/4 v3, 0x0

    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->e(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lm;->a(Landroid/net/Uri;)V

    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/lm;->m:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ll;->a()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_4

    invoke-static {v0}, Lcom/google/android/gms/internal/lm;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->g:Lcom/google/android/gms/ads/internal/client/a;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/cw;->as:Lcom/google/android/gms/internal/cs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cs;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->g:Lcom/google/android/gms/ads/internal/client/a;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/a;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/ads/internal/safebrowsing/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->b:Lcom/google/android/gms/ads/internal/safebrowsing/c;

    invoke-interface {v0, p2}, Lcom/google/android/gms/ads/internal/safebrowsing/c;->a(Ljava/lang/String;)V

    :cond_2
    iput-object v3, p0, Lcom/google/android/gms/internal/lm;->g:Lcom/google/android/gms/ads/internal/client/a;

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ll;->a()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_9

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ll;->n()Lcom/google/android/gms/internal/ah;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ah;->c(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ll;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/lm;->a:Lcom/google/android/gms/internal/ll;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ll;->b()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/gms/internal/ah;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzaw; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_5
    move-object v2, v0

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->w:Lcom/google/android/gms/ads/internal/e;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->w:Lcom/google/android/gms/ads/internal/e;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/e;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_6
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/lm;->a(Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Unable to append parameter to URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {v1}, Lcom/google/android/gms/internal/kd;->d(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/lm;->w:Lcom/google/android/gms/ads/internal/e;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/e;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string v1, "AdWebView unable to handle URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/internal/kd;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5
.end method
