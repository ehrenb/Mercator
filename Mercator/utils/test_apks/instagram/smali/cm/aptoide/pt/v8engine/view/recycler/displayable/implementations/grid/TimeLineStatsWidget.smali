.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "TimeLineStatsWidget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;",
        ">;"
    }
.end annotation


# instance fields
.field private followers:Landroid/widget/TextView;

.field private following:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 22
    return-void
.end method

.method static synthetic lambda$bindView$1(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 35
    return-void
.end method

.method static synthetic lambda$bindView$3(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 25
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->followers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->followers:Landroid/widget/TextView;

    .line 26
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->following:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->following:Landroid/widget/TextView;

    .line 27
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;)V
    .locals 4

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->followers:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->getFollowersText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->following:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->getFollowingText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->followers:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 33
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 36
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->compositeSubscription:Lrx/j/b;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->following:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;)Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget$$Lambda$4;->lambdaFactory$()Lrx/b/b;

    move-result-object v3

    .line 37
    invoke-virtual {v1, v2, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lrx/j/b;->a(Lrx/k;)V

    .line 40
    return-void
.end method

.method synthetic lambda$bindView$0(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->followersClick(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)Ljava/lang/Void;

    return-void
.end method

.method synthetic lambda$bindView$2(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsWidget;->getContext()Landroid/support/v4/app/u;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/TimeLineStatsDisplayable;->followingClick(Lcm/aptoide/pt/v8engine/interfaces/FragmentShower;)Ljava/lang/Void;

    return-void
.end method
