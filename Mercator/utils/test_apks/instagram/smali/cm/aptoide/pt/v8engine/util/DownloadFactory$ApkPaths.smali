.class Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;
.super Ljava/lang/Object;
.source "DownloadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/util/DownloadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApkPaths"
.end annotation


# instance fields
.field altPath:Ljava/lang/String;

.field path:Ljava/lang/String;

.field final synthetic this$0:Lcm/aptoide/pt/v8engine/util/DownloadFactory;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/util/DownloadFactory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;->this$0:Lcm/aptoide/pt/v8engine/util/DownloadFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;->path:Ljava/lang/String;

    .line 318
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/util/DownloadFactory$ApkPaths;->altPath:Ljava/lang/String;

    .line 319
    return-void
.end method
