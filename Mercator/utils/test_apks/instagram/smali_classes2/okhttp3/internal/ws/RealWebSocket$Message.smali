.class final Lokhttp3/internal/ws/RealWebSocket$Message;
.super Ljava/lang/Object;
.source "RealWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field final data:Lc/f;

.field final formatOpcode:I


# direct methods
.method constructor <init>(ILc/f;)V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput p1, p0, Lokhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 533
    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$Message;->data:Lc/f;

    .line 534
    return-void
.end method
