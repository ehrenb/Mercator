.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$Home;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Home"
.end annotation


# static fields
.field public static final CLICK_ON_APPLICATIONS:Ljava/lang/String; = "Click On Applications"

.field public static final CLICK_ON_APPLICATIONS_MORE:Ljava/lang/String; = "Click On Applications More"

.field public static final CLICK_ON_APPS_ESSENTIALS:Ljava/lang/String; = "Click On Apps Essentials"

.field public static final CLICK_ON_APPS_FOR_KIDS:Ljava/lang/String; = "Click On Apps For Kids"

.field public static final CLICK_ON_EDITORS_CHOISE:Ljava/lang/String; = "Click On Editor\'s Choise"

.field public static final CLICK_ON_GAMES:Ljava/lang/String; = "Click On Games"

.field public static final CLICK_ON_GAMES_MORE:Ljava/lang/String; = "Click On Games More"

.field public static final CLICK_ON_HIGHLIGHTED:Ljava/lang/String; = "Click On Highlighted"

.field public static final CLICK_ON_HIGHLIGHTED_MORE:Ljava/lang/String; = "Click On Highlighted More"

.field public static final CLICK_ON_MORE_:Ljava/lang/String; = "Click on More "

.field public static final CLICK_ON_PUBLISHERS:Ljava/lang/String; = "Click On Publishers"

.field public static final CLICK_ON_PUBLISHERS_MORE:Ljava/lang/String; = "Click On Publishers More"

.field public static final CLICK_ON_REVIEWS:Ljava/lang/String; = "Click On Reviews"

.field public static final CLICK_ON_REVIEWS_MORE:Ljava/lang/String; = "Click On Reviews More"

.field public static final EVENT_NAME:Ljava/lang/String; = "Home"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickOnHighlighted()V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public static clickOnMoreWidget(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 558
    return-void
.end method

.method public static clickOnReviewsMore()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method public static generic(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 545
    const-string v0, "Home"

    const-string v1, "Action"

    const v2, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, p0, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 546
    return-void
.end method
