.class public Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;
.super Ljava/lang/Object;
.source "CustomTabsHelper.java"


# static fields
.field private static final CHROME_PACKAGE:Ljava/lang/String; = "com.android.chrome"

.field private static customTabsHelper:Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;


# instance fields
.field private ctConnection:Landroid/support/a/d;

.field private customTabsSession:Landroid/support/a/e;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->customTabsHelper:Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already instantiated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;)Landroid/support/a/e;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->customTabsSession:Landroid/support/a/e;

    return-object v0
.end method

.method static synthetic access$002(Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;Landroid/support/a/e;)Landroid/support/a/e;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->customTabsSession:Landroid/support/a/e;

    return-object p1
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;Landroid/support/a/b;)Landroid/support/a/e;
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->getSession(Landroid/support/a/b;)Landroid/support/a/e;

    move-result-object v0

    return-object v0
.end method

.method private addRefererHttpHeader(Landroid/content/Context;Landroid/support/a/c;)V
    .locals 4

    .prologue
    .line 111
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 112
    const-string v1, "Referer"

    const-string v2, "http://m.aptoide.com"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p2, Landroid/support/a/c;->a:Landroid/content/Intent;

    const-string v2, "com.android.browser.headers"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 114
    iget-object v0, p2, Landroid/support/a/c;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    .line 116
    iget-object v0, p2, Landroid/support/a/c;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.REFERRER_NAME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android-app://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    :cond_0
    return-void
.end method

.method private getBuilder(Landroid/content/Context;)Landroid/support/a/c$a;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabNativeReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-static {}, Lcm/aptoide/pt/v8engine/V8Engine;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 95
    new-instance v1, Landroid/support/a/c$a;

    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->getCustomTabsSession()Landroid/support/a/e;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/a/c$a;-><init>(Landroid/support/a/e;)V

    sget v2, Lcm/aptoide/pt/v8engine/R$color;->aptoide_orange:I

    .line 96
    invoke-static {p1, v2}, Landroid/support/v4/content/b;->c(Landroid/content/Context;I)I

    move-result v2

    .line 95
    invoke-virtual {v1, v2}, Landroid/support/a/c$a;->a(I)Landroid/support/a/c$a;

    move-result-object v1

    const/4 v2, 0x1

    .line 97
    invoke-virtual {v1, v2}, Landroid/support/a/c$a;->a(Z)Landroid/support/a/c$a;

    move-result-object v1

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcm/aptoide/pt/v8engine/R$drawable;->ic_arrow_back:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Landroid/support/a/c$a;->a(Landroid/graphics/Bitmap;)Landroid/support/a/c$a;

    move-result-object v1

    .line 100
    invoke-virtual {v1}, Landroid/support/a/c$a;->a()Landroid/support/a/c$a;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->customtabs_open_native_app:I

    .line 101
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/support/a/c$a;->a(Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/support/a/c$a;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$anim;->slide_in_right:I

    sget v2, Lcm/aptoide/pt/v8engine/R$anim;->slide_out_left:I

    .line 102
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/a/c$a;->a(Landroid/content/Context;II)Landroid/support/a/c$a;

    move-result-object v0

    sget v1, Lcm/aptoide/pt/v8engine/R$anim;->slide_in_left:I

    sget v2, Lcm/aptoide/pt/v8engine/R$anim;->slide_out_right:I

    .line 103
    invoke-virtual {v0, p1, v1, v2}, Landroid/support/a/c$a;->b(Landroid/content/Context;II)Landroid/support/a/c$a;

    move-result-object v0

    return-object v0
.end method

.method private getCustomTabsSession()Landroid/support/a/e;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->customTabsSession:Landroid/support/a/e;

    return-object v0
.end method

.method public static getInstance()Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->customTabsHelper:Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->customTabsHelper:Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;

    .line 43
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->customTabsHelper:Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;

    return-object v0
.end method

.method private getSession(Landroid/support/a/b;)Landroid/support/a/e;
    .locals 1

    .prologue
    .line 62
    if-eqz p1, :cond_0

    .line 63
    new-instance v0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper$2;-><init>(Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;)V

    invoke-virtual {p1, v0}, Landroid/support/a/b;->a(Landroid/support/a/a;)Landroid/support/a/e;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public openInChromeCustomTab(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 85
    invoke-direct {p0, p2}, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->getBuilder(Landroid/content/Context;)Landroid/support/a/c$a;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/support/a/c$a;->b()Landroid/support/a/c;

    move-result-object v0

    .line 87
    invoke-direct {p0, p2, v0}, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->addRefererHttpHeader(Landroid/content/Context;Landroid/support/a/c;)V

    .line 88
    check-cast p2, Landroid/app/Activity;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/support/a/c;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 89
    return-void
.end method

.method public setUpCustomTabsService(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper$1;-><init>(Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->ctConnection:Landroid/support/a/d;

    .line 58
    const-string v0, "com.android.chrome"

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/link/customtabs/CustomTabsHelper;->ctConnection:Landroid/support/a/d;

    invoke-static {p2, v0, v1}, Landroid/support/a/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/support/a/d;)Z

    .line 59
    return-void
.end method
