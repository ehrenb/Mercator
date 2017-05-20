.class public Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe;
.super Ljava/lang/Object;
.source "RequestDownloadAccessOnSubscribe.java"

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
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe;->permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;

    .line 16
    return-void
.end method

.method static synthetic lambda$call$0(Lrx/j;)V
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lrx/j;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0}, Lrx/j;->onCompleted()V

    .line 24
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe;->call(Lrx/j;)V

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
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe;->permissionRequest:Lcm/aptoide/pt/actions/PermissionRequest;

    invoke-static {p1}, Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe$$Lambda$1;->lambdaFactory$(Lrx/j;)Lrx/b/a;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe$$Lambda$2;->lambdaFactory$(Lcm/aptoide/pt/actions/RequestDownloadAccessOnSubscribe;)Lrx/b/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/actions/PermissionRequest;->requestDownloadAccess(Lrx/b/a;Lrx/b/a;)V

    .line 25
    return-void
.end method

.method synthetic lambda$call$1()V
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Permission denied to download file"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
