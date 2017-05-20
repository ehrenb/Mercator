.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/a;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;

.field private final arg$2:Lcm/aptoide/pt/database/realm/Rollback;

.field private final arg$3:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;

.field private final arg$4:Landroid/support/v4/app/u;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;Landroid/support/v4/app/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$3;->arg$2:Lcm/aptoide/pt/database/realm/Rollback;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$3;->arg$3:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$3;->arg$4:Landroid/support/v4/app/u;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;Landroid/support/v4/app/u;)Lrx/b/a;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$3;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;Landroid/support/v4/app/u;)V

    return-object v0
.end method


# virtual methods
.method public call()V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$3;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$3;->arg$2:Lcm/aptoide/pt/database/realm/Rollback;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$3;->arg$3:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$3;->arg$4:Landroid/support/v4/app/u;

    invoke-virtual {v0, v1, v2, v3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->lambda$null$2(Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;Landroid/support/v4/app/u;)V

    return-void
.end method
