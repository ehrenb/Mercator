.class public Landroid/support/v4/app/am$a;
.super Landroid/support/v4/app/aq$a;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final e:Landroid/support/v4/app/aq$a$a;


# instance fields
.field final a:Landroid/os/Bundle;

.field public b:I

.field public c:Ljava/lang/CharSequence;

.field public d:Landroid/app/PendingIntent;

.field private final f:[Landroid/support/v4/app/av;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2860
    new-instance v0, Landroid/support/v4/app/am$a$1;

    invoke-direct {v0}, Landroid/support/v4/app/am$a$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/am$a;->e:Landroid/support/v4/app/aq$a$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 7

    .prologue
    .line 2436
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/am$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/av;Z)V

    .line 2437
    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/av;Z)V
    .locals 1

    .prologue
    .line 2440
    invoke-direct {p0}, Landroid/support/v4/app/aq$a;-><init>()V

    .line 2419
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/am$a;->g:Z

    .line 2441
    iput p1, p0, Landroid/support/v4/app/am$a;->b:I

    .line 2442
    invoke-static {p2}, Landroid/support/v4/app/am$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/am$a;->c:Ljava/lang/CharSequence;

    .line 2443
    iput-object p3, p0, Landroid/support/v4/app/am$a;->d:Landroid/app/PendingIntent;

    .line 2444
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Landroid/support/v4/app/am$a;->a:Landroid/os/Bundle;

    .line 2445
    iput-object p5, p0, Landroid/support/v4/app/am$a;->f:[Landroid/support/v4/app/av;

    .line 2446
    iput-boolean p6, p0, Landroid/support/v4/app/am$a;->g:Z

    .line 2447
    return-void

    .line 2444
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 2451
    iget v0, p0, Landroid/support/v4/app/am$a;->b:I

    return v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2456
    iget-object v0, p0, Landroid/support/v4/app/am$a;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 2461
    iget-object v0, p0, Landroid/support/v4/app/am$a;->d:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2469
    iget-object v0, p0, Landroid/support/v4/app/am$a;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 2478
    iget-boolean v0, p0, Landroid/support/v4/app/am$a;->g:Z

    return v0
.end method

.method public f()[Landroid/support/v4/app/av;
    .locals 1

    .prologue
    .line 2487
    iget-object v0, p0, Landroid/support/v4/app/am$a;->f:[Landroid/support/v4/app/av;

    return-object v0
.end method

.method public synthetic g()[Landroid/support/v4/app/ax$a;
    .locals 1

    .prologue
    .line 2416
    invoke-virtual {p0}, Landroid/support/v4/app/am$a;->f()[Landroid/support/v4/app/av;

    move-result-object v0

    return-object v0
.end method
