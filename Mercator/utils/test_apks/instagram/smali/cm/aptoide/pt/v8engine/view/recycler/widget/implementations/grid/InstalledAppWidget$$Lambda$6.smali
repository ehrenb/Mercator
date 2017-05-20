.class final synthetic Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;


# instance fields
.field private final arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;


# direct methods
.method private constructor <init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;

    return-void
.end method

.method public static lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;)Lcm/aptoide/pt/networkclient/interfaces/ErrorRequestListener;
    .locals 1

    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$6;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$6;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;)V

    return-object v0
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget$$Lambda$6;->arg$1:Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/grid/InstalledAppWidget;->lambda$null$4(Ljava/lang/Throwable;)V

    return-void
.end method
