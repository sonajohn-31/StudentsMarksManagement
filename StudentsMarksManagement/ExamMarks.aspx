<%@ Page Title="" Language="C#" MasterPageFile="~/SMS2.Master" AutoEventWireup="true" CodeBehind="ExamMarks.aspx.cs" Inherits="StudentsMarksManagement.ExamMarksaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <body style="background-image:url(data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBQVEhgUFBMYGBgZGBkaGBsaHBoYGBsYGxgaGxoYGxkbIC0kGx0pIBgYJTclKTAwNTQ0GyQ5PzkyPi0yNDABCwsLEA8QHhISGzIjICsyMjIyMjIyMjIyMjIyMjIyMDAyMjI0NTIwNDAwMjI0MjIyMjIyMj4yMjI4Mj4wNDIyMv/AABEIAL0BCgMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAAAQIDBAUHBv/EAEIQAAIBAwIDBAUKBAUDBQAAAAECEQADEiExBEFRImFxkRMygaGxBQcUF0JSVHLR8IKSssEGI2Ki4TPS8RUkY8LT/8QAGAEBAQEBAQAAAAAAAAAAAAAAAAECAwT/xAAnEQEBAAICAQQBBAMBAAAAAAAAAQIRAxIhEzFBUQQiYXGRQqHBFP/aAAwDAQACEQMRAD8A9ZVBA0G3SpYDoPKhNh4U68DqWA6DyowHQeVOioqOA6DyoxHQeVSpEVQsB0HlTwHQeVOioFgOg8qMB0HlTooFgOg8qMB0HlToJqojgOg8qgyg6AfCmSTttUwKeykEHQU8B0HlTooFgOg8qMB0HlToqBYDoPKlgOg8qlRQRxHQeVGA6DypxTqhYDoPKjAdB5U6KgWA6DyowHQeVOigjgOg8qpu3FUwVnSdAP71orPxHD5xrEd0zVglZZWEgeYFW4DoPKq7FvEEEzJnpVtELAdB5UYDoPKnRNAsB0HlRgOg8qdFRSTYeFOkuw8Kc0BRRNFAUUUUBRRRQFFFRDjqPOglUSnfUqKbABRRRQFFFFAUVEuOZA9tMGgdFFIkVQ6KJ8fKiD08/wDirMMr8JsUUYnu+NPDvNanFkbKkWqRUfvX401Wtzh+6bQHtPnT16VZRW/SxTaGJ7vjRh3mp0VZhjPgQwHTz1+NDDQx+4qVFa1BCiku1OvG0SbDwrJxyElYE78pjata7Dwp0GfglIUggjUxOmmlaKKKAoooqAooooEw0PhXOsWmDKSpEEctI5mulRTYKKKKApE0NVgFdMOPt8pahPj5UQelWVn4jjLSevcVe4kT5b10vHhjN5VNs3FWGLyBpABgTzNaeFtkIAZB109pqjgflS3dYqjElROxAImNJ16edRvfK9pLvonaDAOX2QTyJ5aQemtTvxTGZbmvbfxtnfztuwHTz1+NSArl/LXFOtoi0MnYaYkFgvNgNz0kdZq/5I4d7dlVdizRJkzE/ZHcKs5J6nST43b8G/Om6ivl73GD6czliqWlhonWNIgb9t6+i4biVuILiGVYSP0PfU4fyMeS2T3ls/nXyTLaB4236T0WYzicf3zjWKLnForhCe02wg9+hI22O9cD0TcQpvLAuJiVZBGQidpMkaiKq4C8/E8QzA4kWzBGhDQFWfaSY5V5f/ZnvWve+P3nyz2r6wU64f8AhnjGZGtuSXRjuZMEncnmDPurt17eHlnLhMp8tS7h0UVErNdWhlpNGQ5kTRiOlSohUiNZp06KrHPx/wCf70UMNfL9+6ivFnNZVYSbDwp0k2HhTrKiiiigKKKiTVEqKKKgKKKKAooooEasU6A1A07R08678N81mlet5KyzGQI03EiJr5JuG4O2SHd7jAkMACokb9P6q+xr5biuMRbrheDDsHMsZaTO4GJivP8AnTHUyut+3mW/6jnk6XyHxFm4GNq2ExIB0GRB11I8OvKr/lbhLT2y10QFBOQ0YeB/tXP4X5U4lnVfoxVSwDEqwhSdTrA2ro/K3Aemt4ZlNQeoMciOYq4WZ8Nxxx3Z9zU2s8x8hwIdCvEC2WRGIE7Dy2id9pr67g/la3cRnUxgJcHcaE+3Y61r4awttFRRCqIH/PfULPCW0yCooDGWAGh0jbp3VPxvxc+HxMty+8v3+xJY+S+T7jhGuG0bnpnxbwOpg8iWcQf9NdL5DS5auvw7KxT1lbkDGhnbUe8V3bVtU7KqFHRQANd9BV1OP8K4avbzP++8SY6cn5B4W5bV/SLBLAgSG0Cgbz3V0ltKCWCgE7kAAnxPOrKK9nHxY4YyTzr7ak059n5LVb7XgxlvsiI1iZ66ia6FV3bqoMnYKOrEAeZp27isAysGB2IIIPgRTDDHGWYzXnf9kmkqdY/p4jLB/R/fhcI+9E5Y/wCqIjXbWqvlG+wdETQlWLHkBoBpzJJPka6K6FFc7gOIeHVoZl7QK6BgQYABmDIPXcexFIs+m9IxbDPLJsCcco9HOOJ2iJjnOtBvu3VQS7Ko6sQB5mpI4IBBBB2I1B8DWK7cVbudyAuACs3qq0sXBbZSQU8ce6p8FBZ2QQjEEcgzR2nXuPZ15kE85IaX3HtpU3/v/wAf3pV5eWeVhJsPCnSTYeFOuTQomilVkDooFFAUUUVAUUUUBRUWamKaDppz/f72pULv7Ph/5rpxX9SVOnRVN/iFQS7BR3kCe4dTXqQX7+Og1Y7D+56ClwgbDtNkZbWI0yMCO4QK5q3myJiSx1HPuA8NB4mt9u68AC22w1Yqo+JPurHHn2t17NZY9fdqpVR/mn7i/wAz/wDbR6Bzvdb+FVUe8E++ujDRVdy+i+s6r4kD41X9ETnk35nYj+UmPdVluwi+qir4AD4UFf0xOWTflVmHmBHvqdq4WOqMo6tjr7AxPmKtpBhQc35RuMjhwFMKQpeQitPalh6pIxgnTQiRNHyZa9ftFlZVBfbJ+1m690FRP+nurTxjHsKDGb4lhuBizaTzOIX+KoBcLiKGYh8gVZi5ELOQLEkbAEbdoe2dfO015Z7t5kQWmxUlcA7OoQiMcsSci0fZiJ0nnV/GWlUBssSoxXs55AwAhXdpIG0Hv3qCXUttcFwhWZiZb7a/ZCz60DTEc5011LNhvRIVEFGZ1U6dklgqH7vYaO4gdKqnwRhzmrK7D7QVQVXkuDMBGRMEzr02zcQVBZ1CAK8BSGYu+eMhAwVTnIygmQTWlL3pLijRcCWKllZ5KlfVQmFhjv3VTxnDAXAU1eSwGIdlnQspLKEBJJ7RImSBM1nLevHulaG4guEAJXJ2VoOoKBslU9SVOvQHY7SVSlxUDMVZWMMSxBUr2gx1jtQQT0iNZrDW/QkYlgpgq2j5kgiejFmBkfeBFK0rWiGZVIYqrEM7MsmFGTEl1yaOUTMVRvfY1GpE1TkOtcuTHbUTXYeFOorsPCnXnk+2hToopaCiiioCiiigKTNUS07U1WrrXuBFqVFFLdgoG4/fKik1XG6yiVbXO+UbksFEaanx5D+9bb90KpY8veeQrjgFj1JOvid/7Dzrtz56x1PetceO7up8OcWyiQBpPX9mfaK3Jx1uJZ1UzEFhPlVZ+S7ZgsCSOpJE9YaQPZWrh7CoIURrPLc+Fb48OuOmc8u12h9LX7Ku3gjR/MQB76PS3DtbI/Oyj+jKtFUNxdsGPSLPQEE+Q1royUXTzRfYz++V+FH0dj61xz3DFR7ln30fSgfVR2/hK+94FHpLh2tgfneD5KG+NAvoVv7Slvzln9zE1YyhEOKgACYAAHuqGFw7ug8FJPmWj3UjwsiGuO3tC/0Ae+gz3uKUqwdQVCkkDWcRMCeegjvio27bW+2wUgwG7Tuygn77k5KCdRC8z3HSeBQggyQQQRPIiDtWR7hOjOzordoqkSVOxYN2gCNcF3Eaaiglx/EQ5DFwiqGITLJixcaldQBiNubiajYa6bboT2wgK66qzhoTI7kQNT1HjWnjQGCQuTMYUhisSMic11CwvLfSlwwNthbYL2pIZZ1YRIYMSco1mTMHaNc6vbe/H0nyz3blpkCW4zBGCgQyNO7LuoHOeUjnrpvZJcLhcgUCsAVDDEsQRkQCO2Z1EQN5rC/EMzKAz5u5CxIRFVmDHbFmAXUNOp6Ve1zO3aZwCpILx6slTixH3coPdKnlNJlLbJ8CyyguB2JEPAAUhioXYysjOSTpMabxVVxzvcfK2pBJVCoJU6FjkdFIBMADTXSRV1tka5kkHskOV1GkYqSNMhr4Cdp1r9I9tAhWSAFVmZArQIBaWnxAHnWldACo+h76Vi3iipM4qFnrAiatpdCpdqdJNh4U68G2xRRRQFFFVPxCgwTr4GqLaTLNCMCJGxp0ABRRRUBRRRQFBFFVcRexUnnsO88qDJx1/IhRsIJ/MR/Ya1LgbR1YDXZZ01jmf3uayW0JIA1JPnrqfP3Cu3bQKAByrpx/ry7X2jef6ceqnC6d3RfBST5lo91H0Un1rjt7QnvQA024k/Ztu3sCj/eRSzunZEH5nJPkFj3163EvoVvmgb88ufN5q9VAEAQOg0qn0dw73APypB82LfCj6KD6zu38RX3JFBezACSYHfpVI4y2dnVvynI/7ZpfRLY19Gs9SAT5nWrEWd6CscTPq23bvgL/AFkGtFQuXFUSzBR3kD41V9Nt8my/IGf+kGg0VzluNaTEpMaKxZFQgnTIsZB6wD3TW9GkTrr10PlWJ3RbpNwqOyAhaAsa5AE6Bp36jHpQMcMBbQZwbYBV9I0EEkfdIJ06HcaGq7F6XV7hbXsocCidqORYsGMAAtHQb6lmyHt3UTRGLBDHZgoASo+7lke/XkRTv3WcC2yYlokllIgEE4wcmOmmg6mNqBcTw4a4yqsGAzks4QzIAKKwDkhTM8o3q29xJVHOIBQH8sRIPLsxv0gjvpcX2W9Ir4loWCpcNElQFBByEtqOUztIfBESwacz2nDLjpECBqMYEaE95mgV+2yAOHYkFQQxlWBYCMdlOukRrEzWL5RdldtEDNCo7sFxQhQSsiGhsiRM+rvpV1myTD27YKqTgrO5kDTJVMqnONNiNp00NezNsKxVXUvIjIgYQonb1teelZyx3Nb1/CD5MWEIWcMjhP3YGo7i2RHKCI0itkVlsllcoWLDEMCYyXWCCRuDy56GtdVVSbDwp0k2HhTrwtiiiigKycRw7M0iI03MbeytdFWXQrsJCgHcCrKKKgKKKKAooNKmg65fF3JeJ0XT28z7BW3iruK6bnRfE1zrSSQo/fOfifYKznfGm+Oed1s+T7e7HwH79keddCqraxoNo+H/AJq2vZxSTCOeV3doXLiqJZgo6kgD31V9Nt8my/IGf+gGrPQrlliuXWBPnvVldWWf6Qx9W057zio97T7qj6S4fsoP4mc+WI+NWX7yr6zqviQPjVY4pPs5N3qjMP5gI99AzYc73CPyqo9naDU/oin1mdvF2A/lUge6j07na038RRR7iT7qP80/cX+Z/wDtoJJwttTKooPUKJ86urP6BzvdbwUKo94J99WokCJJ8SSfM0E6ycUxLKgYqGDMSImFx7InQE5b9FPiNdZeNVSoyEnIYwcTkdAQw1GhMkcpoI2sluYFiyspYZQSpUqCJ5g5c9dDr05TsJwfBQXLXWJHpGgmFCESQ3ZCkT2dBrW/hXCXChALNALBmczizKjFhoIDERp3Cdbe07v22UI2ICwDOKsWJIP3tBtpznTNnae/9J7oKjhLTEEsqwykjI5ATBJjIQNz1qy0S9wPjiEVlAJUsSxUnRSYAwHeZ5RrTddjaIYk4uFYrpkocZGB/p9aOjRR/l+kT0WGU64RHo8TOWP2ZiO+K0pXGZCUS4Y3gW2dkBkwGBjwBBPcanc9H6NAgLbLbhipkAj191gK09wOh2qSsyM/YZgxyBWN8VUq0kdNDtHSKE4YlJJCvkzj7QUknQ9RixB8TB50BwwNt8XQAtswdnkgE4sWAI0yI5aHbnurm2eID3FZm0E4QjhCxBGWbCGMEgAdTvpHSqJFS7Dwp0k2HhQ1eF0OiktOgKKKKAooooCgmilVk+wU6KzcbdxWB6zaD+5pakjHxN3J55CQP/sf7Vq4G1AyPPb9/vasdi3kQB+x+9faK6wEaCuePm7dc/E6gbj98qsqtqtr2cN/S41VdtFoh2Xrjjr4yD7oqH0NOeTfmZmHkTHuqy6WjsgE9CcR5gH4VXF0/aRf4WY+cj4V2RZbsIvqoq+AA+FWVn+jsfWuOe4YqPNVn30fQrfNcvzln/qJoJPxVtTDOoPQsJ8qj9LX7Ku3gjAebAD31bbtqohVAHcAPhUzQZ/S3Dtbj87Kv9GVGN0/aRe4Kze/IfCmeLtzHpFJ6AgnyGtM3+isfZj/AFRQSQECC2R6kAfCoX7WYjYgyCdYI2kc/DmCaSvcMQgAnXJtY8FBBPtqfEW8kZJjJWWekgiag5XBC2rLqAucrijhGcjAHNpBEGFA02gnStfF25cBAcyvaIdkGIMdorMnXTSd9RUbxd7ZtejZWZcSdMVkQWDTqBuANdtBy0cQhyzVgpAIOXqld9ddIjfvNSSSagrs3cFZSmJRcoUlgynIyGIBJJVpnWesyee3FspODlmVWuXBiFtgBZxHZkzsDPfJiDv4K4rMzekVnIGg0AUExiDqRLHtc5FUtZXIqiMyoRK5QgOjBQCdYkHH1RptTKW61dIt4nA3FFyMcTiG9XOdZnTKIj+KKrFpXF63bICMmIj1A5DhgI7sJA7+c1ou8QGtgqASzBAGGgbLEhh3QZHdXPvI6PB7SsQAQmMHGQFiRGn/ADWlbL1xnXAW2UkjImMVggkhp7R00jnExW6uHk7QMXLF8cpYJbCsZkKwKtgA0nfMaxpS/wDUOJ+zazX7LwO0OTadRr7ax2luk27CzHsHwqVJdhTryV0FFFFQFFFFAUqdFWaBRRRS3YK5F65mxblsvh/ya28fcIWB9oxPQbn3VjsWsmA5f2/8e81zyvw3hP8AKtnBW4XI7n4fv+1aqBRW5NMW7uwRUlMgeFRqSbefxrvw3zYlMmKz/Sp9W3cb+Ep/XjWmivQjP6S4drYH53g+Shh76MLp3dB+VCT5lo91Tu8Qi+s6r4kD41D6WvLJvyoxH80R76IPos+tcdvaF/oAo+h29ygY9W7Z82k0emc7Wj/EyqPcSfdSi6fuL/M/v7NBcBGg0HTlUgKoPDsd7j+ChAP6Z99H0NOYLfmZmHkxIoJ3eIRfWdV8SB8asBqFuyq+qqr4AD4VZRWC3aDs5csSrlQAzLiIEEYkakHKd9e6oDJ7AOrw88pZEuaHoSVUHofbUuKtC4+IRCQoLM65QpJCqACJkq3OBHOatt3mAdSAWRQRjIVgQcYBnHVWESdu+iIPcFx0wVuy2RYqy4iCCO0BJMxHtpXna0WbsYs09t8MWIAInEyDE9ddjXPuXmjNDclULs7FvRt2ZRUQHEhiYiJAHXWulfIW4ruIXGFO4RplpPKRGv8ApI565xyl3pNizaVrerhgxLllOmWWUqRtiYjw1qi3d1V29Iyj1XYIFEiMyqw2oMSRoCToNatsoHa4QCEZVWdsmhgzjroUGXPHuqu8zlPQvirOpUtkIKkQWVfWyjlsDzPPSpcVYFxyoRJCqWZ1zkEnFcQRlsTqdNNDOluV/paPf2xPfEGPM0uLGLB1YqxhYxzziSBiCDIljII3M1R/m/ev+xLceyg3psPCnXkY+dXiPw1rzf8AWj61uI/DWfN/1rzehl9HePXKK8k+tbiPw1rzf9aX1rcR+Gs+b/rT0Mvo7x65WC/xDhmAO3cNo615n9a3EfhrXm/61U3zoXiZPCWSfF/1qzgy+jvHr1syoPUD4VKvIx86vEfhrPm/60fWtxH4az5v+tT0Mvo7x65RXkn1rcR+Gteb/rR9a3EfhrXm/wCtPQy+j1I9ZZARBEjvqNuyq7DfxPxryj61uI/DWvN/1o+tbiPw1rzf9aehl9HePVeKcqsgxqKr4W6zMQ20SNI515Y3zp3yIPC2SPF/1qKfOhfXbhbI9tz9avoZfR3j1+mnP9/vavI/rW4j8Na83/WgfOvxH4az5v8ArWuPiyxy3S5x6/WduFQklgWnkzMy/wApMDyryr62OJ/DWfN/1qJ+dfiY04ayD4ufdNd+tZ7R63bsovqqq+AA+FWV419aPFn1raeCyo/uffSPzl3TvwttvzXLrjyZop1p3j2C5xCKe06r4kD41H6YnLJvyoxH80R768lt/OjeX1eDsL4Zj4VZ9bHE/hrPm/60607x6t6ZztaYfmZAP9pY+6j/ADTzRf5n/wC2vKvrY4n8NZ83/Wj62OJ/DWfN/wBadado9cWY1Mnny91OvIvrY4n8NZ83/Wj62OJ/DWfN/wBadado9R4sBSHDFW9UQueW5ClRqY1OhEa8pqPCMJacszBbIYnHYYgaYjuJ311NeVv86fEFlb6Na7M835iOtDfOlxBdX+jWpVWG7/aKnr/pFOtNx6etnJi6W0ADHEMW7TAkEgDsocge1BPOrrnEF1t4kpmSCdMhCsxUbjKVI57GOteTL86HFKGC2bQBJI9c4ljLRrqJJMHaemlMfObewCHhbRUREs8yNmyBnKdZ3mnWm49YQFbioGZlYMYY5EFcdQTrHagzOsRFc24/aNt8FDOTcLEF2AZiFCES6sMAInSRuIrzqz8595CSOFtknQlnuO0dJZiY7qd350uJYj/JQADZWdZPUtv7PjWcsLlNexco9Sto4W2+JZlQqykjKGxMyTBYYrMnmdetn/qP/wAb/wA1r/8ASvJ2+dDiSmDWbZ6mXBKzOJjqNCRT+su5+C4f/dWutNx8DX33+GvkWyLVniDZYnC6bhuF0D5WOIhbQKFHEIpkNku5G1fA0YjpXRzfbP8A4ZsNbs3rdu5g9u5cugOzC0p4Bb9pWcDQekJUMd9t67fGfI3CXX9GOEwVuJtTcRwP8tuGBRxCaW3ZTbAGmRJHa0ry7EdKUDoKaNvvbv8Ah7g1uIDa4hjcuohRDcztY8Ot5gqPbDuDMdoBgCYGQo475M4S1aKvwpxTiWDtbuMzrnw1t7SMXth1DucMWAwOW5r4PEdKAo6U0PteH/wz6NMrnCs7+lJZUugDhUwt3EF0MsM3bYEGJxhdTWL/ABvwVq1xD+jTJbj3WF0NC+kF5s7aoNF9H6kHXXLYivlYHQVICgKKKKAooooCiiigKKKKAooooCiiigKKKKAooooCiiigKKKKDRwnEejYn0aPIiHGQ338a3txDSP/AG/DjfbGNeZ7RgCNPGuRRQb0RwP+nbPiVnYDr7aYLT/07XP7sa9dd659FBJ/WOgGp0G3s7qjRRQf/9k=);background-size:cover">
        
                <h2 style="color: #000066; font-family: algerian; text-decoration: underline; font-size: x-large;">&nbsp;</h2>
                <h2 style="color: #000066; font-family: algerian; text-decoration: underline; font-size: x-large;">Exam Marks Info</h2>
            
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="auto-style5">
                    <strong>
            <asp:GridView ID="GridStud" runat="server" Width="90%" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" CssClass="auto-style1" >
                <Columns>
                    <asp:TemplateField HeaderText="Exam type">                     
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p1" runat="server" Text='<%#Eval("examtype") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Science">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p2" runat="server" Text='<%#Eval("science") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Maths">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p3" runat="server" Text='<%#Eval("maths") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Computer">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p4" runat="server" Text='<%#Eval("computers") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Total Mark">                     
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p5" runat="server" Text='<%#Eval("total") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Average">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p6" runat="server" Text='<%#Eval("average") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Grade">                    
                    <ItemTemplate>  <!-- presenting data purpose -->
                        <asp:Label ID="p7" runat="server" Text='<%#Eval("grade") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

               
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
                    </strong>
                </div>
      
    </body>
</asp:Content>
