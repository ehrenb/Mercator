.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "TimelineLoginWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private button:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 20
    return-void
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 23
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->login_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginWidget;->button:Landroid/widget/Button;

    .line 24
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginDisplayable;)V
    .locals 4

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginWidget;->button:Landroid/widget/Button;

    .line 28
    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginDisplayable;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 31
    return-void
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginDisplayable;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimelineLoginDisplayable;->login(Landroid/content/Context;)V

    return-void
.end method
