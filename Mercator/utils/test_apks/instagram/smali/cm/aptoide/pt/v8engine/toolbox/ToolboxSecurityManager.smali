.class public Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;
.super Ljava/lang/Object;
.source "ToolboxSecurityManager.java"


# instance fields
.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;->packageManager:Landroid/content/pm/PackageManager;

    .line 20
    return-void
.end method

.method private getPackageName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSignature(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x40

    .line 38
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 39
    if-eqz v0, :cond_0

    .line 40
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkSignature(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/toolbox/ToolboxSecurityManager;->getSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
