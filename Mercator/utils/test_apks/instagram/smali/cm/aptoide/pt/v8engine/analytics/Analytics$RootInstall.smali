.class public Lcm/aptoide/pt/v8engine/analytics/Analytics$RootInstall;
.super Ljava/lang/Object;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootInstall"
.end annotation


# static fields
.field private static final CONCAT:Ljava/lang/String; = "CONCAT"

.field private static final EXIT_CODE:Ljava/lang/String; = "EXIT_CODE"

.field private static final IS_INSTALLATION_TYPE_EVENT_NAME:Ljava/lang/String; = "INSTALLATION_TYPE"

.field private static final IS_INSTALLED:Ljava/lang/String; = "IS_INSTALLED"

.field private static final IS_ROOT:Ljava/lang/String; = "IS_ROOT"

.field private static final ROOT_INSTALL_EVENT_NAME:Ljava/lang/String; = "ROOT_INSTALL"

.field private static final SETTING_ROOT:Ljava/lang/String; = "SETTING_ROOT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installationType(ZZ)V
    .locals 4

    .prologue
    .line 1152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1153
    const-string v1, "IS_ROOT"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    const-string v1, "SETTING_ROOT"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    const-string v1, "CONCAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    const-string v1, "INSTALLATION_TYPE"

    const/4 v2, 0x4

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->logFabricEvent(Ljava/lang/String;Ljava/util/Map;I)V
    invoke-static {v1, v0, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$1000(Ljava/lang/String;Ljava/util/Map;I)V

    .line 1158
    return-void
.end method

.method public static rootInstallCompleted(IZ)V
    .locals 4

    .prologue
    .line 1143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1144
    const-string v1, "EXIT_CODE"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    const-string v1, "IS_INSTALLED"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    const-string v1, "CONCAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    const-string v1, "ROOT_INSTALL"

    const/4 v2, 0x4

    # invokes: Lcm/aptoide/pt/v8engine/analytics/Analytics;->logFabricEvent(Ljava/lang/String;Ljava/util/Map;I)V
    invoke-static {v1, v0, v2}, Lcm/aptoide/pt/v8engine/analytics/Analytics;->access$1000(Ljava/lang/String;Ljava/util/Map;I)V

    .line 1149
    return-void
.end method
