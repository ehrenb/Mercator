.class public final Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;
.super Ljava/lang/RuntimeException;
.source "LocalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalyticsNotInitializedException"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1165
    const-string v0, "You must first initialize Localytics"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 1166
    return-void
.end method

.method synthetic constructor <init>(Lcom/localytics/android/LocalyticsManager$1;)V
    .locals 0

    .prologue
    .line 1161
    invoke-direct {p0}, Lcom/localytics/android/LocalyticsManager$LocalyticsNotInitializedException;-><init>()V

    return-void
.end method
