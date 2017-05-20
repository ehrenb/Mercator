.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;

.field private final arg$2:Landroid/content/Context;

.field private final arg$3:Lcm/aptoide/pt/actions/PermissionRequest;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$3;->arg$2:Landroid/content/Context;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$3;->arg$3:Lcm/aptoide/pt/actions/PermissionRequest;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$3;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$3;->arg$2:Landroid/content/Context;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable$$Lambda$3;->arg$3:Lcm/aptoide/pt/actions/PermissionRequest;

    check-cast p1, Lcm/aptoide/pt/v8engine/Progress;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CompletedDownloadDisplayable;->lambda$installOrOpenDownload$2(Landroid/content/Context;Lcm/aptoide/pt/actions/PermissionRequest;Lcm/aptoide/pt/v8engine/Progress;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
