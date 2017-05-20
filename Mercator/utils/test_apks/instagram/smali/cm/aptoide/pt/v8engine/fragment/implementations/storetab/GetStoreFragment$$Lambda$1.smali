.class final synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;

.field private final arg$2:Z

.field private final arg$3:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;

    iput-boolean p2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment$$Lambda$1;->arg$2:Z

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment$$Lambda$1;->arg$3:Ljava/lang/String;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;ZLjava/lang/String;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;

    iget-boolean v1, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment$$Lambda$1;->arg$2:Z

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment$$Lambda$1;->arg$3:Ljava/lang/String;

    check-cast p1, Lcm/aptoide/pt/model/v7/store/GetStore;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/fragment/implementations/storetab/GetStoreFragment;->lambda$buildDisplayables$0(ZLjava/lang/String;Lcm/aptoide/pt/model/v7/store/GetStore;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
