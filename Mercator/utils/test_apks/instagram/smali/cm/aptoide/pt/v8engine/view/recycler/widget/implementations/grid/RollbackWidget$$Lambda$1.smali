.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/b/b;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;

.field private final arg$2:Landroid/support/v4/app/u;

.field private final arg$3:Lcm/aptoide/pt/database/realm/Rollback;

.field private final arg$4:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;Landroid/support/v4/app/u;Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;

    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$1;->arg$2:Landroid/support/v4/app/u;

    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/database/realm/Rollback;

    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$1;->arg$4:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;Landroid/support/v4/app/u;Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;)Lrx/b/b;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;Landroid/support/v4/app/u;Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$1;->arg$2:Landroid/support/v4/app/u;

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$1;->arg$3:Lcm/aptoide/pt/database/realm/Rollback;

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget$$Lambda$1;->arg$4:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/RollbackWidget;->lambda$bindView$4(Landroid/support/v4/app/u;Lcm/aptoide/pt/database/realm/Rollback;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/RollbackDisplayable;Ljava/lang/Void;)V

    return-void
.end method
