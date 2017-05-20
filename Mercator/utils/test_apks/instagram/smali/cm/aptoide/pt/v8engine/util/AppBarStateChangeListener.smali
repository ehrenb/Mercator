.class public abstract Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;
.super Ljava/lang/Object;
.source "AppBarStateChangeListener.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;
    }
.end annotation


# instance fields
.field private mCurrentState:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->IDLE:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;->mCurrentState:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 2

    .prologue
    .line 18
    if-nez p2, :cond_1

    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;->mCurrentState:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    sget-object v1, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->EXPANDED:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    if-eq v0, v1, :cond_0

    .line 20
    sget-object v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->EXPANDED:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;)V

    .line 22
    :cond_0
    sget-object v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->EXPANDED:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;->mCurrentState:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    .line 34
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 24
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;->mCurrentState:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    sget-object v1, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->COLLAPSED:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    if-eq v0, v1, :cond_2

    .line 25
    sget-object v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->COLLAPSED:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;)V

    .line 27
    :cond_2
    sget-object v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->COLLAPSED:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;->mCurrentState:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;->mCurrentState:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    sget-object v1, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->IDLE:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    if-eq v0, v1, :cond_4

    .line 30
    sget-object v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->IDLE:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    invoke-virtual {p0, p1, v0}, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;->onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;)V

    .line 32
    :cond_4
    sget-object v0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;->IDLE:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener;->mCurrentState:Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;

    goto :goto_0
.end method

.method public abstract onStateChanged(Landroid/support/design/widget/AppBarLayout;Lcm/aptoide/pt/v8engine/util/AppBarStateChangeListener$State;)V
.end method
