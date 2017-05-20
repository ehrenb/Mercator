.class public final enum Lb/a/a/a/d;
.super Ljava/lang/Enum;
.source "DNSRecordClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/a/d;

.field public static final enum b:Lb/a/a/a/d;

.field public static final enum c:Lb/a/a/a/d;

.field public static final enum d:Lb/a/a/a/d;

.field public static final enum e:Lb/a/a/a/d;

.field public static final enum f:Lb/a/a/a/d;

.field public static final enum g:Lb/a/a/a/d;

.field private static h:Ld/a/b;

.field private static final synthetic k:[Lb/a/a/a/d;


# instance fields
.field private final i:Ljava/lang/String;

.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 18
    new-instance v0, Lb/a/a/a/d;

    const-string v1, "CLASS_UNKNOWN"

    const-string v2, "?"

    invoke-direct {v0, v1, v5, v2, v5}, Lb/a/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/d;->a:Lb/a/a/a/d;

    .line 22
    new-instance v0, Lb/a/a/a/d;

    const-string v1, "CLASS_IN"

    const-string v2, "in"

    invoke-direct {v0, v1, v6, v2, v6}, Lb/a/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    .line 26
    new-instance v0, Lb/a/a/a/d;

    const-string v1, "CLASS_CS"

    const-string v2, "cs"

    invoke-direct {v0, v1, v7, v2, v7}, Lb/a/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/d;->c:Lb/a/a/a/d;

    .line 30
    new-instance v0, Lb/a/a/a/d;

    const-string v1, "CLASS_CH"

    const-string v2, "ch"

    invoke-direct {v0, v1, v8, v2, v8}, Lb/a/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/d;->d:Lb/a/a/a/d;

    .line 34
    new-instance v0, Lb/a/a/a/d;

    const-string v1, "CLASS_HS"

    const-string v2, "hs"

    invoke-direct {v0, v1, v9, v2, v9}, Lb/a/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/d;->e:Lb/a/a/a/d;

    .line 38
    new-instance v0, Lb/a/a/a/d;

    const-string v1, "CLASS_NONE"

    const/4 v2, 0x5

    const-string v3, "none"

    const/16 v4, 0xfe

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/d;->f:Lb/a/a/a/d;

    .line 42
    new-instance v0, Lb/a/a/a/d;

    const-string v1, "CLASS_ANY"

    const/4 v2, 0x6

    const-string v3, "any"

    const/16 v4, 0xff

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/a/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Lb/a/a/a/d;

    sget-object v1, Lb/a/a/a/d;->a:Lb/a/a/a/d;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/a/a/d;->b:Lb/a/a/a/d;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/a/a/d;->c:Lb/a/a/a/d;

    aput-object v1, v0, v7

    sget-object v1, Lb/a/a/a/d;->d:Lb/a/a/a/d;

    aput-object v1, v0, v8

    sget-object v1, Lb/a/a/a/d;->e:Lb/a/a/a/d;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lb/a/a/a/d;->f:Lb/a/a/a/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/a/a/d;->g:Lb/a/a/a/d;

    aput-object v2, v0, v1

    sput-object v0, Lb/a/a/a/d;->k:[Lb/a/a/a/d;

    .line 44
    const-class v0, Lb/a/a/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/a/d;->h:Ld/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Lb/a/a/a/d;->i:Ljava/lang/String;

    .line 74
    iput p4, p0, Lb/a/a/a/d;->j:I

    .line 75
    return-void
.end method

.method public static b(I)Lb/a/a/a/d;
    .locals 6

    .prologue
    .line 125
    and-int/lit16 v2, p0, 0x7fff

    .line 126
    invoke-static {}, Lb/a/a/a/d;->values()[Lb/a/a/a/d;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 127
    iget v5, v0, Lb/a/a/a/d;->j:I

    if-ne v5, v2, :cond_0

    .line 130
    :goto_1
    return-object v0

    .line 126
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 129
    :cond_1
    sget-object v0, Lb/a/a/a/d;->h:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find record class for index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->c(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lb/a/a/a/d;->a:Lb/a/a/a/d;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/a/d;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lb/a/a/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/a/d;

    return-object v0
.end method

.method public static values()[Lb/a/a/a/d;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lb/a/a/a/d;->k:[Lb/a/a/a/d;

    invoke-virtual {v0}, [Lb/a/a/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lb/a/a/a/d;->j:I

    return v0
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lb/a/a/a/d;->a:Lb/a/a/a/d;

    if-eq p0, v0, :cond_0

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/a/d;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/a/d;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
