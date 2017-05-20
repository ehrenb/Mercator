.class public final Lcom/b/b/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/b/b/co;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/b/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/b/b/co",
        "<",
        "Lcom/b/b/z;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    .line 1135
    if-nez p1, :cond_0

    .line 1136
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 1139
    :cond_0
    new-instance v2, Lcom/b/b/z$a$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/b/b/z$a$2;-><init>(Lcom/b/b/z$a;Ljava/io/InputStream;)V

    .line 1146
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 1147
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    .line 1148
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 1149
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v9

    .line 1150
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 1151
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-static {v3}, Lcom/b/b/aa;->a(I)Lcom/b/b/aa;

    move-result-object v11

    .line 1152
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    .line 1153
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 1154
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14

    .line 1155
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v16

    .line 1156
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v18

    .line 1158
    new-instance v2, Lcom/b/b/z;

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/b/b/z;-><init>(Lcom/b/b/y;JJI)V

    .line 1159
    iput-boolean v9, v2, Lcom/b/b/z;->d:Z

    .line 1160
    iput v10, v2, Lcom/b/b/z;->e:I

    .line 1161
    iput-object v11, v2, Lcom/b/b/z;->f:Lcom/b/b/aa;

    .line 1162
    iput-object v12, v2, Lcom/b/b/z;->g:Ljava/lang/String;

    .line 1163
    iput v13, v2, Lcom/b/b/z;->h:I

    .line 1164
    iput-wide v14, v2, Lcom/b/b/z;->i:J

    .line 1165
    move/from16 v0, v16

    iput-boolean v0, v2, Lcom/b/b/z;->j:Z

    .line 1166
    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/b/b/z;->k:J

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    check-cast p2, Lcom/b/b/z;

    .line 2100
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2104
    :cond_1
    new-instance v0, Lcom/b/b/z$a$1;

    invoke-direct {v0, p0, p1}, Lcom/b/b/z$a$1;-><init>(Lcom/b/b/z$a;Ljava/io/OutputStream;)V

    .line 2111
    iget v1, p2, Lcom/b/b/z;->a:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2112
    iget-wide v2, p2, Lcom/b/b/z;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2113
    iget-wide v2, p2, Lcom/b/b/z;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2114
    iget-boolean v1, p2, Lcom/b/b/z;->d:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2115
    iget v1, p2, Lcom/b/b/z;->e:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2116
    iget-object v1, p2, Lcom/b/b/z;->f:Lcom/b/b/aa;

    .line 3019
    iget v1, v1, Lcom/b/b/aa;->e:I

    .line 2116
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2118
    iget-object v1, p2, Lcom/b/b/z;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2119
    iget-object v1, p2, Lcom/b/b/z;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2125
    :goto_1
    iget v1, p2, Lcom/b/b/z;->h:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 2126
    iget-wide v2, p2, Lcom/b/b/z;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2127
    iget-boolean v1, p2, Lcom/b/b/z;->j:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 2128
    iget-wide v2, p2, Lcom/b/b/z;->k:J

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 2130
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0

    .line 2122
    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1
.end method
