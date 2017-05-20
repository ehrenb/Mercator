.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$DownloadComplete;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadComplete"
.end annotation


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "Download Complete"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "Package Name"

.field private static final PARTIAL_EVENT_NAME:Ljava/lang/String; = "Editors Choice_Download_Complete"

.field private static final SOURCE:Ljava/lang/String; = "Source"

.field private static final TRUSTED_BADGE:Ljava/lang/String; = "Trusted Badge"

.field private static applicationsInstallClicked:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 802
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$DownloadComplete;->applicationsInstallClicked:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadComplete(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V
    .locals 5

    .prologue
    .line 813
    :try_start_0
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$DownloadComplete;->applicationsInstallClicked:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 814
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    :goto_0
    return-void

    .line 816
    :cond_0
    const-string v1, "editor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "choice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 817
    const-string v1, "Editors Choice_Download_Complete"

    const-string v2, "Package Name"

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v1, v2, v3, v4}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$400(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 820
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 821
    const-string v2, "Source"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string v0, "Package Name"

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string v0, "Trusted Badge"

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMalware()Lcm/aptoide/pt/model/v7/Malware;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Malware;->getRank()Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Malware$Rank;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string v0, "Download Complete"

    const v2, 0x7fffffff

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->track(Ljava/lang/String;Ljava/util/HashMap;I)V
    invoke-static {v0, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$600(Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 826
    const-string v0, "Download Complete"

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->logFacebookEvents(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v0, v1}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$800(Ljava/lang/String;Ljava/util/Map;)V

    .line 827
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/Analytics$DownloadComplete;->applicationsInstallClicked:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 828
    :catch_0
    move-exception v0

    .line 829
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static installClicked(J)V
    .locals 4

    .prologue
    .line 805
    invoke-static {}, Lcm/aptoide/pt/v8engine/analytics/Analytics$AppViewViewedFrom;->getLastStep()Ljava/lang/String;

    move-result-object v0

    .line 806
    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/Analytics$DownloadComplete;->applicationsInstallClicked:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    return-void
.end method
