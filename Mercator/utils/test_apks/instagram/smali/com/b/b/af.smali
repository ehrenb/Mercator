.class public final enum Lcom/b/b/af;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/b/af;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/b/af;

.field public static final enum b:Lcom/b/b/af;

.field public static final enum c:Lcom/b/b/af;

.field private static final synthetic f:[Lcom/b/b/af;


# instance fields
.field d:Ljava/lang/String;

.field e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/b/b/af;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/b/b/af;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/b/b/af;->a:Lcom/b/b/af;

    .line 5
    new-instance v0, Lcom/b/b/af;

    const-string v1, "PUT"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/b/b/af;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/b/b/af;->b:Lcom/b/b/af;

    .line 6
    new-instance v0, Lcom/b/b/af;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/b/b/af;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/b/b/af;->c:Lcom/b/b/af;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/b/b/af;

    sget-object v1, Lcom/b/b/af;->a:Lcom/b/b/af;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/b/af;->b:Lcom/b/b/af;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/b/af;->c:Lcom/b/b/af;

    aput-object v1, v0, v5

    sput-object v0, Lcom/b/b/af;->f:[Lcom/b/b/af;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/b/b/af;->d:Ljava/lang/String;

    .line 13
    iput p4, p0, Lcom/b/b/af;->e:I

    .line 14
    return-void
.end method

.method public static a(I)Lcom/b/b/af;
    .locals 1

    .prologue
    .line 17
    packed-switch p0, :pswitch_data_0

    .line 25
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 19
    :pswitch_0
    sget-object v0, Lcom/b/b/af;->a:Lcom/b/b/af;

    goto :goto_0

    .line 21
    :pswitch_1
    sget-object v0, Lcom/b/b/af;->b:Lcom/b/b/af;

    goto :goto_0

    .line 23
    :pswitch_2
    sget-object v0, Lcom/b/b/af;->c:Lcom/b/b/af;

    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/b/af;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/b/b/af;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/b/af;

    return-object v0
.end method

.method public static values()[Lcom/b/b/af;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/b/b/af;->f:[Lcom/b/b/af;

    invoke-virtual {v0}, [Lcom/b/b/af;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/b/af;

    return-object v0
.end method
