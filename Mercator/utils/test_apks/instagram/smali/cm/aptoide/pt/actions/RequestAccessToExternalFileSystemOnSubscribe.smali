.class public Lcm/aptoide/pt/actions/RequestAccessToExternalFileSystemOnSubscribe;
.super Ljava/lang/Object;
.source "RequestAccessToExternalFileSystemOnSubscribe.java"

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


# instance fields
.field private final permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/actions/PermissionRequest;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/actions/RequestAccessToExternalFileSystemOnSubscribe;->permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;

    .line 20
    return-void
.end method

.method static synthetic lambda$call$0(Lrx/j;)V
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 28
    :cond_0
    return-void
.end method

.method static synthetic lambda$call$1(Lrx/j;)V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied to access to external storage."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/actions/RequestAccessToExternalFileSystemOnSubscribe;->call(Lrx/j;)V

    return-void
.end method

.method public call(Lrx/j;)V
    .locals 3
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
    .line 23
    iget-object v0, p0, Lcm/aptoide/pt/actions/RequestAccessToExternalFileSystemOnSubscribe;->permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-static {p1}, Lcm/aptoide/pt/actions/RequestAccessToExternalFileSystemOnSubscribe$$Lambda$1;->lambdaFactory$(Lrx/j;)Lrx/b/a;

    move-result-object v1

    invoke-static {p1}, Lcm/aptoide/pt/actions/RequestAccessToExternalFileSystemOnSubscribe$$Lambda$2;->lambdaFactory$(Lrx/j;)Lrx/b/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/actions/PermissionRequest;->requestAccessToExternalFileSystem(Lrx/b/a;Lrx/b/a;)V

    .line 31
    return-void
.end method
