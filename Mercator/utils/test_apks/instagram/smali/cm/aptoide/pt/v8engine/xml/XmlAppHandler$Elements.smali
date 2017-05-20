.class final enum Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;
.super Ljava/lang/Enum;
.source "XmlAppHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/xml/XmlAppHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Elements"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum GET:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum GETAPP:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum INTSIZE:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum MAIN_FILENAME:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum MAIN_FILESIZE:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum MAIN_MD5SUM:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum MAIN_PATH:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum MD5SUM:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum MYAPP:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum NAME:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum NEWSERVER:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum NOTFOUND:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum OBB:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum PATCH_FILENAME:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum PATCH_FILESIZE:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum PATCH_MD5SUM:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum PATCH_PATH:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum PNAME:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

.field public static final enum SERVER:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "MYAPP"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->MYAPP:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 136
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "GETAPP"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->GETAPP:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 137
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->NAME:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 138
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "PNAME"

    invoke-direct {v0, v1, v6}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->PNAME:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 139
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "MD5SUM"

    invoke-direct {v0, v1, v7}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->MD5SUM:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 140
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "INTSIZE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->INTSIZE:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 141
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "NEWSERVER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->NEWSERVER:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 142
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "SERVER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->SERVER:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 143
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "NOTFOUND"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->NOTFOUND:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 144
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "GET"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->GET:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 145
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "OBB"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->OBB:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 146
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "MAIN_PATH"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->MAIN_PATH:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 147
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "MAIN_MD5SUM"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->MAIN_MD5SUM:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 148
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "MAIN_FILESIZE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->MAIN_FILESIZE:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 149
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "MAIN_FILENAME"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->MAIN_FILENAME:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 150
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "PATCH_PATH"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->PATCH_PATH:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 151
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "PATCH_MD5SUM"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->PATCH_MD5SUM:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 152
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "PATCH_FILESIZE"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->PATCH_FILESIZE:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 153
    new-instance v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    const-string v1, "PATCH_FILENAME"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->PATCH_FILENAME:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    .line 133
    const/16 v0, 0x13

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    sget-object v1, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->MYAPP:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->GETAPP:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->NAME:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->PNAME:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v1, v0, v6

    sget-object v1, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->MD5SUM:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->INTSIZE:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->NEWSERVER:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->SERVER:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->NOTFOUND:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->GET:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->OBB:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->MAIN_PATH:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->MAIN_MD5SUM:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->MAIN_FILESIZE:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->MAIN_FILENAME:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->PATCH_PATH:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->PATCH_MD5SUM:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->PATCH_FILESIZE:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->PATCH_FILENAME:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    aput-object v2, v0, v1

    sput-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->$VALUES:[Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;
    .locals 1

    .prologue
    .line 157
    :try_start_0
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 159
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    sget-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->NOTFOUND:Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->$VALUES:[Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/xml/XmlAppHandler$Elements;

    return-object v0
.end method
