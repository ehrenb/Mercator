.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/navigation/NavigationManagerV4;

.field private final arg$2:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

.field private final arg$3:Lcm/aptoide/pt/model/v7/FullReview;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/FullReview;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/navigation/NavigationManagerV4;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/model/v7/FullReview;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/FullReview;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/FullReview;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/navigation/NavigationManagerV4;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/model/v7/FullReview;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RowReviewWidget;->lambda$bindView$0(Lcm/aptoide/pt/navigation/NavigationManagerV4;Lcm/aptoide/pt/model/v7/GetAppMeta$App;Lcm/aptoide/pt/model/v7/FullReview;Ljava/lang/Void;)V

    return-void
.end method
