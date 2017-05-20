.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationInstall;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationInstall"
.end annotation


# static fields
.field private static final DOWNGRADED_ROLLBACK:Ljava/lang/String; = "Downgraded Rollback"

.field public static final EVENT_NAME:Ljava/lang/String; = "Application Install"

.field private static final INSTALLED:Ljava/lang/String; = "Installed"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "Package Name"

.field private static final REFERRED:Ljava/lang/String; = "Referred"

.field private static final REPLACED:Ljava/lang/String; = "Replaced"

.field private static final TRUSTED_BADGE:Ljava/lang/String; = "Trusted Badge"

.field private static final TYPE:Ljava/lang/String; = "Type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downgraded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 712
    const-string v0, "Downgraded Rollback"

    const v1, 0x7fffffff

    invoke-static {p0, v0, p1, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationInstall;->innerTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 713
    return-void
.end method

.method private static innerTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 690
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 692
    const-string v1, "Trusted Badge"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string v1, "Type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string v1, "Package Name"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const-string v1, "Application Install"

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/util/HashMap;I)V
    invoke-static {v1, v0, p3}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$600(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 698
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 699
    const-string v1, "Package Name"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v1, "Trusted Badge"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v1, "Type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :goto_0
    return-void

    .line 702
    :catch_0
    move-exception v0

    .line 703
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static installed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 684
    const-string v0, "Installed"

    const v1, 0x7fffffff

    invoke-static {p0, v0, p1, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationInstall;->innerTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 685
    return-void
.end method

.method public static replaced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 708
    const-string v0, "Replaced"

    const v1, 0x7fffffff

    invoke-static {p0, v0, p1, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics$ApplicationInstall;->innerTrack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 709
    return-void
.end method
