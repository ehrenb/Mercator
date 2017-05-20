.class Lcom/localytics/android/InAppManager$ManifestHolder;
.super Ljava/lang/Object;
.source "InAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/InAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManifestHolder"
.end annotation


# instance fields
.field manifest:Ljava/lang/String;

.field successful:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 2431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2432
    iput-boolean p1, p0, Lcom/localytics/android/InAppManager$ManifestHolder;->successful:Z

    .line 2433
    iput-object p2, p0, Lcom/localytics/android/InAppManager$ManifestHolder;->manifest:Ljava/lang/String;

    .line 2434
    return-void
.end method
