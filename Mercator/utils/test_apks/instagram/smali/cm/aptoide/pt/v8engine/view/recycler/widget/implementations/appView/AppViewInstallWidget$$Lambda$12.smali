.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# static fields
.field private static final instance:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$12;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$12;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$12;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$12;->instance:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$12;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lrx/b/b;
    .locals 1

    sget-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$12;->instance:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget$$Lambda$12;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-static {p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewInstallWidget;->lambda$showErrorMessage$18(Lcm/aptoide/pt/utils/GenericDialogs$EResponse;)V

    return-void
.end method
