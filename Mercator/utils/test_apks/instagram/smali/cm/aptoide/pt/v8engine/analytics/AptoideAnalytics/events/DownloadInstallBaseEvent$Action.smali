.class public final enum Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;
.super Ljava/lang/Enum;
.source "DownloadInstallBaseEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

.field public static final enum AUTO:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

.field public static final enum CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    new-instance v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->AUTO:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->CLICK:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->AUTO:Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    aput-object v1, v0, v3

    sput-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->$VALUES:[Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->$VALUES:[Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/analytics/AptoideAnalytics/events/DownloadInstallBaseEvent$Action;

    return-object v0
.end method
