.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$7;->arg$1:Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$7;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$7;-><init>(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget$$Lambda$7;->arg$1:Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridStoreMetaWidget;->lambda$null$6(Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;Ljava/lang/Void;)Lcm/aptoide/pt/model/v7/store/Store$SocialChannel;

    move-result-object v0

    return-object v0
.end method
