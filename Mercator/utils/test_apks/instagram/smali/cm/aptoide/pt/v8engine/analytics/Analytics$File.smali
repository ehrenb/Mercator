.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$File;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "File"
.end annotation


# static fields
.field private static final ATTRIBUTE:Ljava/lang/String; = "APK"

.field private static final EVENT_NAME:Ljava/lang/String; = "Download_99percent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static moveFile(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1128
    const-string v0, "Download_99percent"

    const-string v1, "APK"

    const/4 v2, 0x2

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v0, v1, p0, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1129
    return-void
.end method
