.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$ViewedApplication;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewedApplication"
.end annotation


# static fields
.field private static final APPLICATION_NAME:Ljava/lang/String; = "Application Name"

.field private static final APPLICATION_PUBLISHER:Ljava/lang/String; = "Application Publisher"

.field public static final EVENT_NAME:Ljava/lang/String; = "Viewed Application"

.field private static final SOURCE:Ljava/lang/String; = "Source"

.field private static final TRUSTED_BADGE:Ljava/lang/String; = "Trusted Badge"

.field private static final TYPE:Ljava/lang/String; = "Type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static view(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 900
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 902
    const-string v1, "Application Name"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string v1, "Trusted Badge"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string v1, "Viewed Application"

    const/4 v2, 0x1

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/util/HashMap;I)V
    invoke-static {v1, v0, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$600(Ljava/lang/String;Ljava/util/HashMap;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :goto_0
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 908
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
