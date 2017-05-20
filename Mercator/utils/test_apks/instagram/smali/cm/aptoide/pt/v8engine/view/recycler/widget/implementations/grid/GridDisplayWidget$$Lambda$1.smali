.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;

.field private final arg$2:Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;

.field private final arg$3:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridDisplayWidget;->lambda$bindView$2(Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;Ljava/lang/Void;)V

    return-void
.end method
