.class final Lcom/localytics/android/LocationProvider$InfoV3Columns;
.super Ljava/lang/Object;
.source "LocationProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InfoV3Columns"
.end annotation


# static fields
.field static final LOCATION_MONITORING_ENABLED:Ljava/lang/String; = "location_monitoring_enabled"

.field static final PLACES_DATA_LAST_MODIFIED:Ljava/lang/String; = "places_data_last_modified"

.field static final TABLE_NAME:Ljava/lang/String; = "info"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This class is non-instantiable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
