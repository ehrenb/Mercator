.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;)Lcm/aptoide/pt/networkclient/interfaces/SuccessRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;

    check-cast p1, Lcm/aptoide/pt/model/v7/store/ListStores;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/FragmentTopStores;->lambda$new$3(Lcm/aptoide/pt/model/v7/store/ListStores;)V

    return-void
.end method
