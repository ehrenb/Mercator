.class final Lcm/aptoide/pt/v8engine/customviews/DotsView$1;
.super Landroid/util/Property;
.source "DotsView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/customviews/DotsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcm/aptoide/pt/v8engine/customviews/DotsView;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcm/aptoide/pt/v8engine/customviews/DotsView;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->getCurrentProgress()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcm/aptoide/pt/v8engine/customviews/DotsView;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/customviews/DotsView$1;->get(Lcm/aptoide/pt/v8engine/customviews/DotsView;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcm/aptoide/pt/v8engine/customviews/DotsView;Ljava/lang/Float;)V
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcm/aptoide/pt/v8engine/customviews/DotsView;->setCurrentProgress(F)V

    .line 24
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcm/aptoide/pt/v8engine/customviews/DotsView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/customviews/DotsView$1;->set(Lcm/aptoide/pt/v8engine/customviews/DotsView;Ljava/lang/Float;)V

    return-void
.end method
