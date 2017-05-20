.class final Lcom/localytics/android/Localytics$2;
.super Ljava/util/HashSet;
.source "Localytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/Localytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 79
    const-string v0, "analytics_host"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$2;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v0, "messaging_host"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$2;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v0, "profiles_host"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$2;->add(Ljava/lang/Object;)Z

    .line 82
    const-string v0, "manifest_host"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$2;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v0, "plugin_library"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$2;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v0, "push_api_host"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$2;->add(Ljava/lang/Object;)Z

    .line 85
    const-string v0, "test_devices_host"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$2;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v0, "test_push_events_host"

    invoke-virtual {p0, v0}, Lcom/localytics/android/Localytics$2;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method
