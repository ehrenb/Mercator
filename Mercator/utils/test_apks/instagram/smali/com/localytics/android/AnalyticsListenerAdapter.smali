.class public Lcom/localytics/android/AnalyticsListenerAdapter;
.super Ljava/lang/Object;
.source "AnalyticsListenerAdapter.java"

# interfaces
.implements Lcom/localytics/android/AnalyticsListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localyticsDidTagEvent(Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method

.method public localyticsSessionDidOpen(ZZZ)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public localyticsSessionWillClose()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public localyticsSessionWillOpen(ZZZ)V
    .locals 0

    .prologue
    .line 15
    return-void
.end method
