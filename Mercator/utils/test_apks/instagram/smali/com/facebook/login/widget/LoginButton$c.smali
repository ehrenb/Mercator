.class public final enum Lcom/facebook/login/widget/LoginButton$c;
.super Ljava/lang/Enum;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/login/widget/LoginButton$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/login/widget/LoginButton$c;

.field public static final enum b:Lcom/facebook/login/widget/LoginButton$c;

.field public static final enum c:Lcom/facebook/login/widget/LoginButton$c;

.field public static d:Lcom/facebook/login/widget/LoginButton$c;

.field private static final synthetic g:[Lcom/facebook/login/widget/LoginButton$c;


# instance fields
.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    new-instance v0, Lcom/facebook/login/widget/LoginButton$c;

    const-string v1, "AUTOMATIC"

    const-string v2, "automatic"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/login/widget/LoginButton$c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/login/widget/LoginButton$c;->a:Lcom/facebook/login/widget/LoginButton$c;

    .line 82
    new-instance v0, Lcom/facebook/login/widget/LoginButton$c;

    const-string v1, "DISPLAY_ALWAYS"

    const-string v2, "display_always"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/login/widget/LoginButton$c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/login/widget/LoginButton$c;->b:Lcom/facebook/login/widget/LoginButton$c;

    .line 87
    new-instance v0, Lcom/facebook/login/widget/LoginButton$c;

    const-string v1, "NEVER_DISPLAY"

    const-string v2, "never_display"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/login/widget/LoginButton$c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/login/widget/LoginButton$c;->c:Lcom/facebook/login/widget/LoginButton$c;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/login/widget/LoginButton$c;

    sget-object v1, Lcom/facebook/login/widget/LoginButton$c;->a:Lcom/facebook/login/widget/LoginButton$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/login/widget/LoginButton$c;->b:Lcom/facebook/login/widget/LoginButton$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/login/widget/LoginButton$c;->c:Lcom/facebook/login/widget/LoginButton$c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/login/widget/LoginButton$c;->g:[Lcom/facebook/login/widget/LoginButton$c;

    .line 89
    sget-object v0, Lcom/facebook/login/widget/LoginButton$c;->a:Lcom/facebook/login/widget/LoginButton$c;

    sput-object v0, Lcom/facebook/login/widget/LoginButton$c;->d:Lcom/facebook/login/widget/LoginButton$c;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput-object p3, p0, Lcom/facebook/login/widget/LoginButton$c;->e:Ljava/lang/String;

    .line 105
    iput p4, p0, Lcom/facebook/login/widget/LoginButton$c;->f:I

    .line 106
    return-void
.end method

.method public static a(I)Lcom/facebook/login/widget/LoginButton$c;
    .locals 5

    .prologue
    .line 92
    invoke-static {}, Lcom/facebook/login/widget/LoginButton$c;->values()[Lcom/facebook/login/widget/LoginButton$c;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 93
    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton$c;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 98
    :goto_1
    return-object v0

    .line 92
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/widget/LoginButton$c;
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/facebook/login/widget/LoginButton$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/widget/LoginButton$c;

    return-object v0
.end method

.method public static values()[Lcom/facebook/login/widget/LoginButton$c;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/facebook/login/widget/LoginButton$c;->g:[Lcom/facebook/login/widget/LoginButton$c;

    invoke-virtual {v0}, [Lcom/facebook/login/widget/LoginButton$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/widget/LoginButton$c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/facebook/login/widget/LoginButton$c;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$c;->e:Ljava/lang/String;

    return-object v0
.end method
