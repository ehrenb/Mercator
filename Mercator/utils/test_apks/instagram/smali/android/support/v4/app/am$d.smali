.class public Landroid/support/v4/app/am$d;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field A:I

.field B:Landroid/app/Notification;

.field C:Landroid/widget/RemoteViews;

.field D:Landroid/widget/RemoteViews;

.field E:Landroid/widget/RemoteViews;

.field public F:Landroid/app/Notification;

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field public g:Landroid/graphics/Bitmap;

.field public h:Ljava/lang/CharSequence;

.field public i:I

.field j:I

.field k:Z

.field public l:Z

.field public m:Landroid/support/v4/app/am$q;

.field public n:Ljava/lang/CharSequence;

.field public o:[Ljava/lang/CharSequence;

.field p:I

.field q:I

.field r:Z

.field s:Ljava/lang/String;

.field t:Z

.field u:Ljava/lang/String;

.field public v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/am$a;",
            ">;"
        }
    .end annotation
.end field

.field w:Z

.field x:Ljava/lang/String;

.field y:Landroid/os/Bundle;

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/am$d;->k:Z

    .line 1034
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/am$d;->v:Ljava/util/ArrayList;

    .line 1036
    iput-boolean v4, p0, Landroid/support/v4/app/am$d;->w:Z

    .line 1039
    iput v4, p0, Landroid/support/v4/app/am$d;->z:I

    .line 1040
    iput v4, p0, Landroid/support/v4/app/am$d;->A:I

    .line 1047
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/am$d;->F:Landroid/app/Notification;

    .line 1063
    iput-object p1, p0, Landroid/support/v4/app/am$d;->a:Landroid/content/Context;

    .line 1066
    iget-object v0, p0, Landroid/support/v4/app/am$d;->F:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 1067
    iget-object v0, p0, Landroid/support/v4/app/am$d;->F:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1068
    iput v4, p0, Landroid/support/v4/app/am$d;->j:I

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/am$d;->G:Ljava/util/ArrayList;

    .line 1070
    return-void
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    .line 1437
    if-eqz p2, :cond_0

    .line 1438
    iget-object v0, p0, Landroid/support/v4/app/am$d;->F:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1442
    :goto_0
    return-void

    .line 1440
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/am$d;->F:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method protected static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 1756
    if-nez p0, :cond_1

    .line 1760
    :cond_0
    :goto_0
    return-object p0

    .line 1757
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1758
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1744
    sget-object v0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/am$h;

    invoke-virtual {p0}, Landroid/support/v4/app/am$d;->b()Landroid/support/v4/app/am$e;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/app/am$h;->a(Landroid/support/v4/app/am$d;Landroid/support/v4/app/am$e;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/am$d;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/support/v4/app/am$d;->F:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 1115
    return-object p0
.end method

.method public a(IIZ)Landroid/support/v4/app/am$d;
    .locals 0

    .prologue
    .line 1206
    iput p1, p0, Landroid/support/v4/app/am$d;->p:I

    .line 1207
    iput p2, p0, Landroid/support/v4/app/am$d;->q:I

    .line 1208
    iput-boolean p3, p0, Landroid/support/v4/app/am$d;->r:Z

    .line 1209
    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/am$d;
    .locals 2

    .prologue
    .line 1607
    iget-object v0, p0, Landroid/support/v4/app/am$d;->v:Ljava/util/ArrayList;

    new-instance v1, Landroid/support/v4/app/am$a;

    invoke-direct {v1, p1, p2, p3}, Landroid/support/v4/app/am$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    return-object p0
.end method

.method public a(J)Landroid/support/v4/app/am$d;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Landroid/support/v4/app/am$d;->F:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 1078
    return-object p0
.end method

.method public a(Landroid/app/Notification;)Landroid/support/v4/app/am$d;
    .locals 0

    .prologue
    .line 1681
    iput-object p1, p0, Landroid/support/v4/app/am$d;->B:Landroid/app/Notification;

    .line 1682
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroid/support/v4/app/am$d;
    .locals 0

    .prologue
    .line 1229
    iput-object p1, p0, Landroid/support/v4/app/am$d;->d:Landroid/app/PendingIntent;

    .line 1230
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/am$d;
    .locals 0

    .prologue
    .line 1293
    iput-object p1, p0, Landroid/support/v4/app/am$d;->g:Landroid/graphics/Bitmap;

    .line 1294
    return-object p0
.end method

.method public a(Landroid/net/Uri;)Landroid/support/v4/app/am$d;
    .locals 2

    .prologue
    .line 1306
    iget-object v0, p0, Landroid/support/v4/app/am$d;->F:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1307
    iget-object v0, p0, Landroid/support/v4/app/am$d;->F:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 1308
    return-object p0
.end method

.method public a(Landroid/support/v4/app/am$a;)Landroid/support/v4/app/am$d;
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Landroid/support/v4/app/am$d;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1627
    return-object p0
.end method

.method public a(Landroid/support/v4/app/am$q;)Landroid/support/v4/app/am$d;
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Landroid/support/v4/app/am$d;->m:Landroid/support/v4/app/am$q;

    if-eq v0, p1, :cond_0

    .line 1640
    iput-object p1, p0, Landroid/support/v4/app/am$d;->m:Landroid/support/v4/app/am$q;

    .line 1641
    iget-object v0, p0, Landroid/support/v4/app/am$d;->m:Landroid/support/v4/app/am$q;

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Landroid/support/v4/app/am$d;->m:Landroid/support/v4/app/am$q;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/am$q;->a(Landroid/support/v4/app/am$d;)V

    .line 1645
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;
    .locals 1

    .prologue
    .line 1138
    invoke-static {p1}, Landroid/support/v4/app/am$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/am$d;->b:Ljava/lang/CharSequence;

    .line 1139
    return-object p0
.end method

.method public a(Z)Landroid/support/v4/app/am$d;
    .locals 1

    .prologue
    .line 1371
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/am$d;->a(IZ)V

    .line 1372
    return-object p0
.end method

.method public b(I)Landroid/support/v4/app/am$d;
    .locals 2

    .prologue
    .line 1429
    iget-object v0, p0, Landroid/support/v4/app/am$d;->F:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 1430
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Landroid/support/v4/app/am$d;->F:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1433
    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;
    .locals 1

    .prologue
    .line 1146
    invoke-static {p1}, Landroid/support/v4/app/am$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/am$d;->c:Ljava/lang/CharSequence;

    .line 1147
    return-object p0
.end method

.method public b(Z)Landroid/support/v4/app/am$d;
    .locals 1

    .prologue
    .line 1391
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/am$d;->a(IZ)V

    .line 1392
    return-object p0
.end method

.method protected b()Landroid/support/v4/app/am$e;
    .locals 1

    .prologue
    .line 1752
    new-instance v0, Landroid/support/v4/app/am$e;

    invoke-direct {v0}, Landroid/support/v4/app/am$e;-><init>()V

    return-object v0
.end method

.method public c(I)Landroid/support/v4/app/am$d;
    .locals 0

    .prologue
    .line 1656
    iput p1, p0, Landroid/support/v4/app/am$d;->z:I

    .line 1657
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/app/am$d;
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Landroid/support/v4/app/am$d;->F:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/am$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1275
    return-object p0
.end method

.method public c(Z)Landroid/support/v4/app/am$d;
    .locals 0

    .prologue
    .line 1402
    iput-boolean p1, p0, Landroid/support/v4/app/am$d;->w:Z

    .line 1403
    return-object p0
.end method

.method protected c()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1825
    iget-object v0, p0, Landroid/support/v4/app/am$d;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Landroid/support/v4/app/am$d;->b:Ljava/lang/CharSequence;

    return-object v0
.end method
