.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget$$Lambda$1;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget$$Lambda$1;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;)V

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget$$Lambda$1;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;

    invoke-static {v0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/ExcludedUpdateWidget;->lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
