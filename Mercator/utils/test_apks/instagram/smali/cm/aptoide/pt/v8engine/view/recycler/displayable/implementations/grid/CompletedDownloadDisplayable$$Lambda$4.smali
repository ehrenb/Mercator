.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/actions/PermissionManager;

.field private final arg$2:Lcm/aptoide/pt/actions/PermissionRequest;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/actions/PermissionManager;Lcm/aptoide/pt/actions/PermissionRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$4;->arg$1:Lcm/aptoide/pt/actions/PermissionManager;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$4;->arg$2:Lcm/aptoide/pt/actions/PermissionRequest;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/actions/PermissionManager;Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$4;-><init>(Lcm/aptoide/pt/actions/PermissionManager;Lcm/aptoide/pt/actions/PermissionRequest;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$4;->arg$1:Lcm/aptoide/pt/actions/PermissionManager;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$4;->arg$2:Lcm/aptoide/pt/actions/PermissionRequest;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;->lambda$resumeDownload$3(Lcm/aptoide/pt/actions/PermissionManager;Lcm/aptoide/pt/actions/PermissionRequest;Ljava/lang/Void;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
