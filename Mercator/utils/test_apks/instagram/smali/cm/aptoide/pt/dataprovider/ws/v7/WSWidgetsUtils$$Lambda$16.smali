.class final synthetic Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$16;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

.field private final arg$2:Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$16;->arg$1:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    iput-object p2, p0, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$16;->arg$2:Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$16;

    invoke-direct {v0, p0, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$16;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$16;->arg$1:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    iget-object v1, p0, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils$$Lambda$16;->arg$2:Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;

    check-cast p1, Lcm/aptoide/pt/model/v7/ListComments;

    invoke-static {v0, v1, p1}, Lcm/aptoide/pt/dataprovider/ws/v7/WSWidgetsUtils;->lambda$loadWidgetNode$10(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Lcm/aptoide/pt/dataprovider/ws/v7/BaseRequestWithStore$StoreCredentials;Lcm/aptoide/pt/model/v7/ListComments;)V

    return-void
.end method
