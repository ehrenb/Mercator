.class public abstract Lokhttp3/internal/ws/RealWebSocket$Streams;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation


# instance fields
.field public final client:Z

.field public final sink:Lc/d;

.field public final source:Lc/e;


# direct methods
.method public constructor <init>(ZLc/e;Lc/d;)V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    iput-boolean p1, p0, Lokhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    .line 556
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$Streams;->source:Lc/e;

    .line 557
    iput-object p3, p0, Lokhttp3/internal/ws/RealWebSocket$Streams;->sink:Lc/d;

    .line 558
    return-void
.end method
