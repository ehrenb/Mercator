.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;

.field private final arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;

.field private final arg$3:Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

.field private final arg$4:J

.field private final arg$5:Lcm/aptoide/pt/model/v7/listapp/App;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;JLcm/aptoide/pt/model/v7/listapp/App;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    iput-wide p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;->arg$4:J

    iput-object p6, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;->arg$5:Lcm/aptoide/pt/model/v7/listapp/App;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;JLcm/aptoide/pt/model/v7/listapp/App;)Lrx/b/b;
    .locals 7

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;JLcm/aptoide/pt/model/v7/listapp/App;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 8
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;->arg$2:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    iget-wide v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;->arg$4:J

    iget-object v6, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget$$Lambda$1;->arg$5:Lcm/aptoide/pt/model/v7/listapp/App;

    move-object v7, p1

    check-cast v7, Ljava/lang/Void;

    invoke-virtual/range {v1 .. v7}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/GridAppWidget;->lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;JLcm/aptoide/pt/model/v7/listapp/App;Ljava/lang/Void;)V

    return-void
.end method
