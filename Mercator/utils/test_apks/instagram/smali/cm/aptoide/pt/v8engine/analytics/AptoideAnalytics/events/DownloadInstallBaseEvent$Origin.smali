.class public final enum Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;
.super Ljava/lang/Enum;
.source "DownloadInstallBaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

.field public static final enum DOWNGRADE:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

.field public static final enum INSTALL:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

.field public static final enum UPDATE:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

.field public static final enum UPDATE_ALL:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    const-string v1, "INSTALL"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->INSTALL:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->UPDATE:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    const-string v1, "DOWNGRADE"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->DOWNGRADE:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    const-string v1, "UPDATE_ALL"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->UPDATE_ALL:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->INSTALL:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->UPDATE:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->DOWNGRADE:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->UPDATE_ALL:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    aput-object v1, v0, v5

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->$VALUES:[Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->$VALUES:[Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Origin;

    return-object v0
.end method
