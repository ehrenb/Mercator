.class public Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;
.super Ljava/lang/Object;
.source "SystemInstallOnSubscribe.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTALL_REPLACE_EXISTING:I = 0x2

.field private static final INSTALL_SUCCEEDED:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private final packageUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;->packageManager:Landroid/content/pm/PackageManager;

    .line 33
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;->packageUri:Landroid/net/Uri;

    .line 34
    return-void
.end method

.method private isSystem(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    :try_start_0
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 77
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Aptoide application not found by package manager."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;->call(Lrx/j;)V

    return-void
.end method

.method public call(Lrx/j;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe$1;-><init>(Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;Lrx/j;)V

    .line 54
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;->context:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;->isSystem(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    :try_start_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "installPackage"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/a/a/a;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 59
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;->packageUri:Landroid/net/Uri;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, ""

    aput-object v3, v2, v0

    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/install/installer/SystemInstallOnSubscribe;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {p1}, Lrx/j;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    new-instance v1, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;

    invoke-direct {v1, v0}, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;

    const-string v1, "Aptoide does not hold system privilege!"

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/install/exception/InstallationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
