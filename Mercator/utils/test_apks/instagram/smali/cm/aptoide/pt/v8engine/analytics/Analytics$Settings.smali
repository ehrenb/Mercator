.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$Settings;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# static fields
.field private static final CHECKED:Ljava/lang/String; = "Checked"

.field public static final EVENT_NAME:Ljava/lang/String; = "Settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onSettingChange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public static onSettingChange(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 495
    return-void
.end method
