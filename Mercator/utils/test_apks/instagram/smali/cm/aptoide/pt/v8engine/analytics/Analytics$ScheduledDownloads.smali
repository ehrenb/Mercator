.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$ScheduledDownloads;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduledDownloads"
.end annotation


# static fields
.field private static final CLICK_ON_INSTALL_SELECTED:Ljava/lang/String; = "Clicked on Install Selected"

.field private static final CLICK_ON_INVERT_SELECTION:Ljava/lang/String; = "Clicked on Invert Selection"

.field private static final CLICK_ON_REMOVE_SELECTED:Ljava/lang/String; = "Clicked on Remove Selected"

.field public static final EVENT_NAME:Ljava/lang/String; = "Scheduled Downloads"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clickOnInstallSelected()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public static clickOnInvertSelection()V
    .locals 0

    .prologue
    .line 451
    return-void
.end method

.method public static clickOnRemoveSelected()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method
