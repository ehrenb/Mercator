.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewStoreWidget$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewStoreWidget$$Lambda$6;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewStoreWidget$$Lambda$6;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewStoreWidget$$Lambda$6;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewStoreWidget$$Lambda$6;->instance:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewStoreWidget$$Lambda$6;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewStoreWidget$$Lambda$6;->instance:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewStoreWidget$$Lambda$6;

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewStoreWidget;->lambda$null$2(Ljava/lang/Throwable;)V

    return-void
.end method
