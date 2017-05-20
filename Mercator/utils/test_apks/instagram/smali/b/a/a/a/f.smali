.class public final enum Lb/a/a/a/f;
.super Ljava/lang/Enum;
.source "DNSResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/a/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/a/f;

.field public static final enum b:Lb/a/a/a/f;

.field public static final enum c:Lb/a/a/a/f;

.field public static final enum d:Lb/a/a/a/f;

.field public static final enum e:Lb/a/a/a/f;

.field public static final enum f:Lb/a/a/a/f;

.field public static final enum g:Lb/a/a/a/f;

.field public static final enum h:Lb/a/a/a/f;

.field public static final enum i:Lb/a/a/a/f;

.field public static final enum j:Lb/a/a/a/f;

.field public static final enum k:Lb/a/a/a/f;

.field public static final enum l:Lb/a/a/a/f;

.field private static final synthetic o:[Lb/a/a/a/f;


# instance fields
.field private final m:Ljava/lang/String;

.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    new-instance v0, Lb/a/a/a/f;

    const-string v1, "Unknown"

    const-string v2, "Unknown"

    const v3, 0xffff

    invoke-direct {v0, v1, v5, v2, v3}, Lb/a/a/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    .line 19
    new-instance v0, Lb/a/a/a/f;

    const-string v1, "NoError"

    const-string v2, "No Error"

    invoke-direct {v0, v1, v6, v2, v5}, Lb/a/a/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/f;->b:Lb/a/a/a/f;

    .line 23
    new-instance v0, Lb/a/a/a/f;

    const-string v1, "FormErr"

    const-string v2, "Format Error"

    invoke-direct {v0, v1, v7, v2, v6}, Lb/a/a/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/f;->c:Lb/a/a/a/f;

    .line 27
    new-instance v0, Lb/a/a/a/f;

    const-string v1, "ServFail"

    const-string v2, "Server Failure"

    invoke-direct {v0, v1, v8, v2, v7}, Lb/a/a/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/f;->d:Lb/a/a/a/f;

    .line 31
    new-instance v0, Lb/a/a/a/f;

    const-string v1, "NXDomain"

    const-string v2, "Non-Existent Domain"

    invoke-direct {v0, v1, v9, v2, v8}, Lb/a/a/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/f;->e:Lb/a/a/a/f;

    .line 35
    new-instance v0, Lb/a/a/a/f;

    const-string v1, "NotImp"

    const/4 v2, 0x5

    const-string v3, "Not Implemented"

    invoke-direct {v0, v1, v2, v3, v9}, Lb/a/a/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/f;->f:Lb/a/a/a/f;

    .line 39
    new-instance v0, Lb/a/a/a/f;

    const-string v1, "Refused"

    const/4 v2, 0x6

    const-string v3, "Query Refused"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/a/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/f;->g:Lb/a/a/a/f;

    .line 43
    new-instance v0, Lb/a/a/a/f;

    const-string v1, "YXDomain"

    const/4 v2, 0x7

    const-string v3, "Name Exists when it should not"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/a/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/f;->h:Lb/a/a/a/f;

    .line 47
    new-instance v0, Lb/a/a/a/f;

    const-string v1, "YXRRSet"

    const/16 v2, 0x8

    const-string v3, "RR Set Exists when it should not"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/a/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/f;->i:Lb/a/a/a/f;

    .line 51
    new-instance v0, Lb/a/a/a/f;

    const-string v1, "NXRRSet"

    const/16 v2, 0x9

    const-string v3, "RR Set that should exist does not"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/a/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/f;->j:Lb/a/a/a/f;

    .line 55
    new-instance v0, Lb/a/a/a/f;

    const-string v1, "NotAuth"

    const/16 v2, 0xa

    const-string v3, "Server Not Authoritative for zone"

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/a/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/f;->k:Lb/a/a/a/f;

    .line 59
    new-instance v0, Lb/a/a/a/f;

    const-string v1, "NotZone"

    const/16 v2, 0xb

    const-string v3, "NotZone Name not contained in zone"

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/a/a/f;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/f;->l:Lb/a/a/a/f;

    .line 11
    const/16 v0, 0xc

    new-array v0, v0, [Lb/a/a/a/f;

    sget-object v1, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/a/a/f;->b:Lb/a/a/a/f;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/a/a/f;->c:Lb/a/a/a/f;

    aput-object v1, v0, v7

    sget-object v1, Lb/a/a/a/f;->d:Lb/a/a/a/f;

    aput-object v1, v0, v8

    sget-object v1, Lb/a/a/a/f;->e:Lb/a/a/a/f;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lb/a/a/a/f;->f:Lb/a/a/a/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/a/a/f;->g:Lb/a/a/a/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/a/a/f;->h:Lb/a/a/a/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lb/a/a/a/f;->i:Lb/a/a/a/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lb/a/a/a/f;->j:Lb/a/a/a/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lb/a/a/a/f;->k:Lb/a/a/a/f;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lb/a/a/a/f;->l:Lb/a/a/a/f;

    aput-object v2, v0, v1

    sput-object v0, Lb/a/a/a/f;->o:[Lb/a/a/a/f;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p3, p0, Lb/a/a/a/f;->m:Ljava/lang/String;

    .line 103
    iput p4, p0, Lb/a/a/a/f;->n:I

    .line 104
    return-void
.end method

.method public static a(II)Lb/a/a/a/f;
    .locals 6

    .prologue
    .line 137
    shr-int/lit8 v0, p1, 0x1c

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, p0, 0xf

    or-int v2, v0, v1

    .line 138
    invoke-static {}, Lb/a/a/a/f;->values()[Lb/a/a/a/f;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 139
    iget v5, v0, Lb/a/a/a/f;->n:I

    if-ne v5, v2, :cond_0

    .line 141
    :goto_1
    return-object v0

    .line 138
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 141
    :cond_1
    sget-object v0, Lb/a/a/a/f;->a:Lb/a/a/a/f;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/a/f;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lb/a/a/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/a/f;

    return-object v0
.end method

.method public static values()[Lb/a/a/a/f;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lb/a/a/a/f;->o:[Lb/a/a/a/f;

    invoke-virtual {v0}, [Lb/a/a/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lb/a/a/a/f;->n:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/a/f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/a/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
