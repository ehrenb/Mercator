.class Leu/chainfire/libsuperuser/b$b;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static a:I


# instance fields
.field private final b:[Ljava/lang/String;

.field private final c:I

.field private final d:Leu/chainfire/libsuperuser/b$e;

.field private final e:Leu/chainfire/libsuperuser/b$d;

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 603
    const/4 v0, 0x0

    sput v0, Leu/chainfire/libsuperuser/b$b;->a:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;ILeu/chainfire/libsuperuser/b$e;Leu/chainfire/libsuperuser/b$d;)V
    .locals 5

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-object p1, p0, Leu/chainfire/libsuperuser/b$b;->b:[Ljava/lang/String;

    .line 615
    iput p2, p0, Leu/chainfire/libsuperuser/b$b;->c:I

    .line 616
    iput-object p3, p0, Leu/chainfire/libsuperuser/b$b;->d:Leu/chainfire/libsuperuser/b$e;

    .line 617
    iput-object p4, p0, Leu/chainfire/libsuperuser/b$b;->e:Leu/chainfire/libsuperuser/b$d;

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-%08x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Leu/chainfire/libsuperuser/b$b;->a:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Leu/chainfire/libsuperuser/b$b;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$b;->f:Ljava/lang/String;

    .line 619
    return-void
.end method

.method static synthetic a(Leu/chainfire/libsuperuser/b$b;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$b;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$e;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$b;->d:Leu/chainfire/libsuperuser/b$e;

    return-object v0
.end method

.method static synthetic c(Leu/chainfire/libsuperuser/b$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$b;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Leu/chainfire/libsuperuser/b$b;)Leu/chainfire/libsuperuser/b$d;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$b;->e:Leu/chainfire/libsuperuser/b$d;

    return-object v0
.end method

.method static synthetic e(Leu/chainfire/libsuperuser/b$b;)I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Leu/chainfire/libsuperuser/b$b;->c:I

    return v0
.end method
