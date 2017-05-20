.class public Lcm/aptoide/pt/actions/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestDownloadAccess(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/actions/PermissionRequest;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe;-><init>(Lcm/aptoide/pt/actions/PermissionRequest;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public requestExternalStoragePermission(Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/actions/PermissionRequest;",
            ")",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcm/aptoide/pt/actions/RequestAccessToExternalFileSystemOnSubscribe;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/actions/RequestAccessToExternalFileSystemOnSubscribe;-><init>(Lcm/aptoide/pt/actions/PermissionRequest;)V

    invoke-static {v0}, Lrx/d;->a(Lrx/d$a;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
