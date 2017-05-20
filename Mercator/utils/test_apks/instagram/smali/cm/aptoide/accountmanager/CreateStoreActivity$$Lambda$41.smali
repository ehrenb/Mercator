.class final synthetic Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$41;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/accountmanager/CreateStoreActivity;


# direct methods
.method private constructor <init>(Lcm/aptoide/accountmanager/CreateStoreActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$41;->arg$1:Lcm/aptoide/accountmanager/CreateStoreActivity;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/accountmanager/CreateStoreActivity;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$41;

    invoke-direct {v0, p0}, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$41;-><init>(Lcm/aptoide/accountmanager/CreateStoreActivity;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/accountmanager/CreateStoreActivity$$Lambda$41;->arg$1:Lcm/aptoide/accountmanager/CreateStoreActivity;

    check-cast p1, Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;

    invoke-virtual {v0, p1}, Lcm/aptoide/accountmanager/CreateStoreActivity;->lambda$null$9(Lcm/aptoide/accountmanager/ws/responses/CheckUserCredentialsJson;)V

    return-void
.end method
