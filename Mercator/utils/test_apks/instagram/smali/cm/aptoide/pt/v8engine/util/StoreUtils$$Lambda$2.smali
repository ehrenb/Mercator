.class final synthetic Lcm/aptoide/pt/v8engine/util/StoreUtils$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/StoreUtils$$Lambda$2;->arg$1:Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/util/StoreUtils$$Lambda$2;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/util/StoreUtils$$Lambda$2;-><init>(Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;)V

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/StoreUtils$$Lambda$2;->arg$1:Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;

    invoke-static {v0, p1}, Lcm/aptoide/pt/v8engine/util/StoreUtils;->lambda$subscribeStore$1(Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;Ljava/lang/Throwable;)V

    return-void
.end method
