.class final synthetic Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/e;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$3;->arg$1:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)Lrx/b/e;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$3;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$3;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$3;->arg$1:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    check-cast p1, Lcm/aptoide/pt/model/v7/ListApps;

    invoke-static {v0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils;->lambda$loadWidgetNode$1(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/model/v7/ListApps;)Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    move-result-object v0

    return-object v0
.end method
